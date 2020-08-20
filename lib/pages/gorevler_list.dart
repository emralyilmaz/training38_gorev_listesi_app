import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app/pages/gorevler_tile.dart';

class GorevListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GorevTile(),
        GorevTile(),
        GorevTile(),
      ],
    );
  }
}
