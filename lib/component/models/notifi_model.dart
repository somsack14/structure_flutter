import 'package:flutter/cupertino.dart';

class NotifiModel extends ChangeNotifier {
  String _text1 = "All Modules";

  String get text1 => _text1;

  set text1(String text1) {
    _text1 = text1;
  }
  String _text2 = "";

  String get text2 => _text2;

  set text2(String text2) {
    _text2 = text2;
  }
}
