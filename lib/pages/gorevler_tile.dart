import 'package:flutter/material.dart';

class GorevTile extends StatefulWidget {
  @override
  _GorevTileState createState() => _GorevTileState();
}

class _GorevTileState extends State<GorevTile> {
  // Global State ile checkBox oluşturmada: GorevCheckBox daki özellikler değiştiriliyo
  // fakat bu _GorevTileState değiştirilerek bu işlem yapılıyo.
  bool secim = false;
  void secimDegistirmeFonk(bool yeniSecim) {
    setState(() {
      secim = yeniSecim;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Görev 1",
        style: TextStyle(
            decoration: secim ? TextDecoration.lineThrough : null,
            color: Color.fromRGBO(245, 224, 211, 1)),
      ),
      trailing: GorevCheckBox(
        secim: secim,
        secimDegistir: secimDegistirmeFonk,
      ),
    );
  }
}

class GorevCheckBox extends StatelessWidget {
  final bool secim;
  final Function secimDegistir;

  GorevCheckBox({this.secim, this.secimDegistir});

  // Local State: bir state içerisinde değişken oluşturup,
  // yine o state içerisinde o değişken kullanılıyorsa bu Local State'dir.
  // secim isimli bir değişken oluşturuldu, setState içerisinde de kullanıldı.
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: secim,
      onChanged: secimDegistir,
      activeColor: Color.fromRGBO(77, 59, 59, 1),
    );
  }
}
