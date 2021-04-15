import 'package:flutter/material.dart';

class DialogUtil {
  static Future<bool> messageDialog(
      BuildContext context, String title, String msg,
      {dismissible = false}) async {
    bool pressedYes = false;

    await showDialog<String>(
      context: context,
      barrierDismissible:
          dismissible, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          // backgroundColor: Color(0xFF2680C2),
          // contentPadding: EdgeInsets.all(10),
          title: Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF186FAF))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                  child: Text(msg,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF486581)))),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok', style: TextStyle(color: Color(0xFF4098D7))),
              onPressed: () {
                print('Clicked ok option!');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

    return pressedYes;
  }
}
