import 'package:flutter/foundation.dart';
import 'gorev.dart';

class GorevVeri with ChangeNotifier {
  // ChangeNotifier kullanılmasındaki amaç;
  // burada sadece değişkenlerin değil fonksiyonlarında kullanılacak olmasıdır.
  List<Gorev> gorevListesi = [
    Gorev(gorevAd: "Effortless English çalış"),
    Gorev(gorevAd: "Mehmet Yılmaz'ı öp"),
    Gorev(gorevAd: "Flutter Çalış"),
    Gorev(gorevAd: "Mehmet Yılmaz'a el salla"),
  ];

  int get gorevSayisi {
    return gorevListesi.length;
  }

  void gorevEkle(Gorev yeniGorev) {
    gorevListesi.add(yeniGorev);
    notifyListeners();
  }

  void gorevGuncelle(Gorev g) {
    g.toggleYapildi();
    notifyListeners();
  }

  void gorevSil(Gorev g) {
    gorevListesi.remove(g);
    notifyListeners();
  }
}
