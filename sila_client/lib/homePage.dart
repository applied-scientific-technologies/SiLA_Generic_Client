import 'package:flutter/material.dart';
import 'package:sila_client/silaClient.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var serverAddress = '192.168.0.53:50052';
  final tfc = TextEditingController(text: '192.168.0.53:50052');
  List<Feature> features = [];

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
                        child: ElevatedButton(
                            child: Text('Connect to server and list features'),
                            onPressed: () async {
                              var ip = tfc.text.split(':')[0];
                              var port = int.tryParse(tfc.text.split(':')[1]);

                              if (ip != null && port != null) {
                                try {
                                  SilaClient _client =
                                      SilaClient(ip, port, true);
                                  await _client.connectToServer();

                                  setState(() {
                                    features = _client.features;
                                  });

                                  //need to handle closing the connection to the server
                                  //Uncomment this line to call '' in the hello world server
                                  // await testHelloWorld(_client);
                                } catch (e) {
                                  //show error message, something has gone wrong
                                  print('Something has gone wrong');
                                }
                              } else {
                                //something wrong with IP and port
                                print('Something has gone wrong');
                              }
                            }),
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
  }
}
