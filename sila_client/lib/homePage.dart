import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:sila_client/silaClient.dart';
import 'package:fixnum/fixnum.dart';
import 'package:sila_client/SiLA/SiLAFramework.pb.dart' as sila;
import 'package:sila_client/widgets/dialogUtil.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final tfc = TextEditingController(text: '192.168.0.53:50052');

  var serverAddress = '192.168.0.53:50052';
  var secureConnection = true;
  List<Feature> features = [];
  SilaClient _client;
  String outputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                          'SiLA Server address and port (e.g. 192.168.0.53:50052)'),
                      TextField(
                        controller: tfc,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ElevatedButton(
                                  child: Text(
                                      'Connect to server and list features'),
                                  onPressed: () async {
                                    setState(() {
                                      outputText = '';
                                      features = [];
                                    });
                                    var ip = tfc.text.split(':')[0];
                                    var port =
                                        int.tryParse(tfc.text.split(':')[1]);

                                    if (ip != null && port != null) {
                                      try {
                                        _client = SilaClient(
                                            ip, port, secureConnection);
                                        await _client.connectToServer();

                                        setState(() {
                                          features = _client.features;
                                        });

                                        //need to handle closing the connection to the server
                                        //Uncomment this line to call '' in the hello world server
                                        // await testHelloWorld(_client);
                                      } catch (e) {
                                        //show error message, something has gone wrong
                                        await DialogUtil.messageDialog(
                                            context,
                                            'Error',
                                            'Something went wrong connecting to server');
                                      }
                                    } else {
                                      //something wrong with IP and port
                                      await DialogUtil.messageDialog(
                                          context,
                                          'Error',
                                          'Something went wrong connecting to server');
                                    }
                                  }),
                            ),
                            Text('Secure connection?'),
                            Checkbox(
                                value: secureConnection,
                                onChanged: (newVal) {
                                  setState(() {
                                    secureConnection = newVal;
                                  });
                                }),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(children: [
                            ElevatedButton(
                              child: Text("TestHello"),
                              onPressed: _client != null
                                  ? () async {
                                      await testHelloWorld(_client);
                                    }
                                  : null,
                            ),
                            Spacer(),
                            ElevatedButton(
                              child: Text("TestOProp"),
                              onPressed: _client != null
                                  ? () async {
                                      await testObsProperty(_client);
                                    }
                                  : null,
                            ),
                            Spacer(),
                            ElevatedButton(
                              child: Text("TestOCmd"),
                              onPressed: _client != null
                                  ? () async {
                                      await testObsCommand(_client);
                                    }
                                  : null,
                            )
                          ])),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Command output: $outputText'),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                var feature = features[index];
                var commands = feature.commands
                    .map((c) => '"${c.name}" inputs:${c.inputs.length}')
                    .toList()
                    .join('|');
                var properties = feature.properties
                    .map((p) => '"${p.name}" outputs:${p.outputs.length}')
                    .toList()
                    .join('|');

                return ListTile(
                  title: Text('${feature.featureId}'),
                  subtitle:
                      Text('Commands: $commands -- Properties: $properties'),
                );
              }, childCount: features.length),
            )
          ],
        ));
  }

  //refactor this code so it is not in multiple places
  testHelloWorld(_client) async {
    // HelloWorld Example -> Java Hello World Example
    var command_response = await _client.callCommand(0, 0, ["Joe"]);
    var property_response = await _client.getProperty(0, 0);
    print(command_response);
    print(property_response);
    setState(() {
      outputText = "$command_response\n$property_response";
    });
  }

  testObsProperty(_client) async {
    var sub_stream = await _client.subscribeProperty(2, 0);

    sub_stream.listen((propChange) {
      print(propChange);
      setState(() {
        outputText = "$propChange";
      });
    });

    //Observable Property Example -> Python Observable Property Example
    var command_response = await _client.callCommand(2, 0, [Int64(100)]);
    await Future.delayed(Duration(seconds: 10));
    command_response = await _client.callCommand(2, 0, [Int64(200)]);
    await Future.delayed(Duration(seconds: 10));
    command_response = await _client.callCommand(2, 0, [Int64(300)]);
    await Future.delayed(Duration(seconds: 10));
  }

  testObsCommand(_client) async {
    // Observable Command -> Python Observable Command Example
    var obs_command_uuid = await _client.callObsCommand(2, 0, [125.50, 250.50]);

    // Listen to Command
    var command_stream =
        await _client.subscribeObsCommandInfo(2, 0, obs_command_uuid);
    var intermediate_stream = await _client.subscribeObsCommandIntermediateInfo(
        2, 0, obs_command_uuid);

    command_stream.listen((execInfo) async {
      if (execInfo.commandStatus ==
          sila.ExecutionInfo_CommandStatus.finishedSuccessfully) {
        var command_result =
            await _client.getObsCommandResult(2, 0, obs_command_uuid);
        print("Final Result - $command_result");
        setState(() {
          outputText = "$command_result";
        });
      }
      setState(() {
        outputText = "$execInfo";
      });
      print("Exec Info - $execInfo");
    });

    intermediate_stream.listen((interInfo) {
      setState(() {
        outputText = "$interInfo";
      });
      print("Intermediate - $interInfo");
    });
  }
}
