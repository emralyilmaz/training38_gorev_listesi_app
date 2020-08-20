import 'package:flutter/material.dart';

class GorevTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Görev 1",
        style: TextStyle(color: Color.fromRGBO(245, 224, 211, 1)),
      ),
      trailing: Checkbox(value: false, onChanged: (bool val) {}),
    );
  }
}
