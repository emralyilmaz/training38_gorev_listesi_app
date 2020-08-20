import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app/pages/gorevler_tile.dart';
import 'package:training38_gorev_listesi_app/models/gorev.dart';

class GorevListesi extends StatefulWidget {
  @override
  _GorevListesiState createState() => _GorevListesiState();
}

class _GorevListesiState extends State<GorevListesi> {
  List<Gorev> gorevListesi = [
    Gorev(gorevAd: "Spora Git"),
    Gorev(gorevAd: "Effortless English çalış"),
    Gorev(gorevAd: "Mehmet Yılmaz'ı öp"),
    Gorev(gorevAd: "Flutter Çalış"),
    Gorev(gorevAd: "Mehmet Yılmaz'a el salla"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GorevTile(
          gorevAd: gorevListesi[index].gorevAd,
          secim: gorevListesi[index].yapildi,
          checkBoxCallback: (bool val) {
            setState(() {
              gorevListesi[index].toggleYapildi();
            });
          },
        );
      },
      itemCount: gorevListesi.length,
    );
  }
}
