import 'package:flutter/material.dart';
import 'package:todo_app/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            //space btw textfield and buttons
            SizedBox(
              height: 8,
            ),

            //buttons -> save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButtons(text: "Save", onPressed: onSave),

                SizedBox(
                  width: 10,
                ),
                //cancel button
                MyButtons(
                    text: "Cancel",
                    onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
