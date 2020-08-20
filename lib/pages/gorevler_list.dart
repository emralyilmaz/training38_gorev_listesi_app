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
              gorevAd:
                  Provider.of<GorevVeri>(context).gorevListesi[index].gorevAd,
              secim:
                  Provider.of<GorevVeri>(context).gorevListesi[index].yapildi,
              checkBoxCallback: (bool val) {
                // setState(() {
                //   Provider.of<GorevVeri>(context).gorevListesi[index].toggleYapildi();
                // });
              },
            );
          },
          itemCount: Provider.of<GorevVeri>(context).gorevSayisi,
        );
      },
    );
  }
}
