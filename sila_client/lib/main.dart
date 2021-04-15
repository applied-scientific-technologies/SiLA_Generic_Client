import 'package:flutter/material.dart';
import 'package:sila_client/homePage.dart';
import 'silaClient.dart';
import 'package:fixnum/fixnum.dart';
import 'package:sila_client/SiLA/SiLAFramework.pb.dart' as sila;

void main() async {
  SilaClient _client = SilaClient("192.168.10.5", 50052, false);
  await _client.connectToServer();

  //await testHelloWorld(_client);
  //await testObsProperty(_client);
  await testObsCommand(_client);

  // To Implement/Test
  //  Structs / Lists
  //  SiLA Errors
  //  Metadata

  runApp(MyApp());
}

testObsProperty(_client) async {
  var sub_stream = await _client.subscribeProperty(2, 0);

  sub_stream.listen((event) {
    print(event);
  });

  //Observable Property Example -> Python Observable Property Example
  var command_response = await _client.callCommand(2, 0, [Int64(100)]);
  await Future.delayed(Duration(seconds: 10));
  command_response = await _client.callCommand(2, 0, [Int64(200)]);
  await Future.delayed(Duration(seconds: 10));
  command_response = await _client.callCommand(2, 0, [Int64(300)]);
  await Future.delayed(Duration(seconds: 10));
}

testHelloWorld(_client) async {
  // HelloWorld Example -> Java Hello World Example
  var command_response = await _client.callCommand(0, 0, ["Joe"]);
  var property_response = await _client.getProperty(0, 0);
  print(command_response);
  print(property_response);
}

testObsCommand(_client) async {
  // Observable Command -> Python Observable Command Example
  var obs_command_uuid = await _client.callObsCommand(2, 0, [125.50, 250.50]);

  // Listen to Command
  var command_stream =
      await _client.subscribeObsCommandInfo(2, 0, obs_command_uuid);
  var intermediate_stream =
      await _client.subscribeObsCommandIntermediateInfo(2, 0, obs_command_uuid);

  command_stream.listen((execInfo) async {
    if (execInfo.commandStatus ==
        sila.ExecutionInfo_CommandStatus.finishedSuccessfully) {
      var command_result =
          await _client.getObsCommandResult(2, 0, obs_command_uuid);
      print("Final Result - $command_result");
    }
    print("Exec Info - $execInfo");
  });

  intermediate_stream.listen((interInfo) {
    print("Intermediate - $interInfo");
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SiLA Flutter Client',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SiLA Flutter Client'),
    );
  }
}
