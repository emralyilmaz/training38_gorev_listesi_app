import 'package:flutter/material.dart';

class GorevEkle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(102, 45, 45, 1),
      child: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Color.fromRGBO(245, 224, 211, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Görev Ekle",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 30, color: Color.fromRGBO(77, 59, 59, 1)),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
                color: Color.fromRGBO(77, 59, 59, 1),
                onPressed: () {},
                child: Text(
                  "Ekle",
                  style: TextStyle(
                      color: Color.fromRGBO(245, 224, 211, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ))
          ],
        ),
      ),
    );
  }
}