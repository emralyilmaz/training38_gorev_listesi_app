import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app/pages/gorevler_add.dart';
import 'package:training38_gorev_listesi_app/pages/gorevler_list.dart';
import 'package:training38_gorev_listesi_app/models/gorev.dart';

class GorevlerEkran extends StatefulWidget {
  // Widget buildModalSheet(BuildContext context) {
  //   return Container(
  //     child: Center(
  //       child: Text("Modal Sheet"),
  //     ),
  //   );
  // }

  @override
  _GorevlerEkranState createState() => _GorevlerEkranState();
}

class _GorevlerEkranState extends State<GorevlerEkran> {
  List<Gorev> gorevListesi = [
    Gorev(gorevAd: "Spora Git"),
    Gorev(gorevAd: "Effortless English çalış"),
    Gorev(gorevAd: "Mehmet Yılmaz'ı öp"),
    Gorev(gorevAd: "Flutter Çalış"),
    Gorev(gorevAd: "Mehmet Yılmaz'a el salla"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 224, 211, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => GorevEkle((yeniGorev) {
                    setState(() {
                      // print(yeniGorev);
                      gorevListesi.add(Gorev(
                          gorevAd: yeniGorev)); // listeye yeni görev ekleme
                    });
                    Navigator.pop(context);
                  }));
        },
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
              child: GorevListesi(
                gorevListesi: gorevListesi,
              ),
            ),
          )
        ],
      ),
    );
  }
}
