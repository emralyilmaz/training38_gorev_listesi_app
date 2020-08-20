import 'package:flutter/material.dart';

class GorevTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Görev 1",
        style: TextStyle(color: Color.fromRGBO(245, 224, 211, 1)),
      ),
      trailing: GorevCheckBox(),
    );
  }
}

class GorevCheckBox extends StatefulWidget {
  @override
  _GorevCheckBoxState createState() => _GorevCheckBoxState();
}

class _GorevCheckBoxState extends State<GorevCheckBox> {
  bool secim = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: secim,
      onChanged: (bool val) {
        setState(() {
          secim = val;
        });
      },
      activeColor: Color.fromRGBO(77, 59, 59, 1),
    );
  }
}
