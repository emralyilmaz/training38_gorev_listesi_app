import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app/pages/gorevler_list.dart';

class GorevlerEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 224, 211, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color.fromRGBO(222, 98, 98, 1),
        ),
        backgroundColor: Color.fromRGBO(77, 59, 59, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 40,
                    color: Color.fromRGBO(245, 224, 211, 1),
                  ),
                  backgroundColor: Color.fromRGBO(77, 59, 59, 1),
                  radius: 30,
                ),
                SizedBox(height: 30.0),
                Text(
                  "Görev Yöneticisi",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(77, 59, 59, 1)),
                ),
                SizedBox(height: 10.0),
                Text(
                  "5 tane görev var",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(77, 59, 59, 1)),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(222, 98, 98, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: GorevListesi(),
            ),
          )
        ],
      ),
    );
  }
}
