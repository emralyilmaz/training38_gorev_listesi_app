import 'package:flutter/material.dart';

class GorevTile extends StatelessWidget {
  final bool secim;
  final String gorevAd;
  final Function checkBoxCallback;

  GorevTile({this.secim, this.gorevAd, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        gorevAd,
        style: TextStyle(
            color: Color.fromRGBO(245, 224, 211, 1),
            decoration: secim ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: secim,
        onChanged: checkBoxCallback,
        activeColor: Color.fromRGBO(77, 59, 59, 1),
      ),
    );
  }
}
