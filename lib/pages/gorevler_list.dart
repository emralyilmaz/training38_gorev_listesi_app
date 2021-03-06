import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app/models/gorev_veri.dart';
import 'package:training38_gorev_listesi_app/pages/gorevler_tile.dart';
import 'package:provider/provider.dart';

class GorevListesi extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<GorevVeri>(
      builder: (context, gorevVeri, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return GorevTile(
              gorevAd: gorevVeri.gorevListesi[index].gorevAd,
              secim: gorevVeri.gorevListesi[index].yapildi,
              checkBoxCallback: (bool val) {
                gorevVeri.gorevGuncelle(gorevVeri.gorevListesi[index]);
              },
              listTileLongPress: () {
                if (gorevVeri.gorevListesi[index].yapildi == true) {
                  gorevVeri.gorevSil(gorevVeri.gorevListesi[index]);
                } else
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text("Önce Görevi Yapmalısınız.")));
              },
            );
          },
          itemCount: gorevVeri.gorevSayisi,
        );
      },
    );
  }
}
