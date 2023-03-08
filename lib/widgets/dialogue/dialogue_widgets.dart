import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogs {
  static final Dialogs _singletone = Dialogs._internal();
  Dialogs._internal();
  factory Dialogs() {
    return _singletone;
  }
  static Widget questionStartDialogue({required VoidCallback onTap}) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'please login before you start',
          )
        ],
      ),
      actions: [TextButton(onPressed: () {}, child: Text('confirm'))],
    );
  }
}
