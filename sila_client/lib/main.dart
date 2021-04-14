import 'package:flutter/material.dart';
import 'package:sila_client/homePage.dart';
import 'silaClient.dart';
import 'package:fixnum/fixnum.dart';

void main() async {

  SilaClient _client = SilaClient("192.168.10.5", 50052);
  await _client.connectToServer();

  // Observable Command
  var obs_command_response = await _client.callObsCommand(1,0, [true]);


  // HelloWorld Example
  var command_response = await _client.callCommand(0, 0, ["Joe"]);
  var property_response = await _client.getProperty(0, 0);

 // var sub_stream = await _client.subscribeProperty(, 0);

  //sub_stream.listen((event) {
  //  print(event);
  //});

  //Observable Property Example
  //var command_response = await _client.callCommand(2, 0, [Int64(100)]);
  //await Future.delayed(Duration(seconds: 10));
  //command_response = await _client.callCommand(2, 0, [Int64(200)]);
  //await Future.delayed(Duration(seconds: 10));
  //command_response = await _client.callCommand(2, 0, [Int64(300)]);
  //await Future.delayed(Duration(seconds: 10));




  runApp(MyApp());
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


