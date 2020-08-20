import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app/pages/gorevler_tile.dart';
import 'package:training38_gorev_listesi_app/models/gorev.dart';

class GorevListesi extends StatefulWidget {
  final List<Gorev> gorevListesi;
  GorevListesi({this.gorevListesi});
  @override
  _GorevListesiState createState() => _GorevListesiState();
}

class _GorevListesiState extends State<GorevListesi> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GorevTile(
          gorevAd: widget.gorevListesi[index].gorevAd,
          secim: widget.gorevListesi[index].yapildi,
          checkBoxCallback: (bool val) {
            setState(() {
              widget.gorevListesi[index].toggleYapildi();
            });
          },
        );
      },
      itemCount: widget.gorevListesi.length,
    );
  }
}
