import 'package:flutter/cupertino.dart';
import 'package:structure_flutter/component/models/newsModel.dart';

class AuthProviders extends ChangeNotifier {
  Newsmodel? _newsmodel;
  Newsmodel? get getNewsmodel => _newsmodel;
  void setNewsmodel({value}) {
    _newsmodel = Newsmodel.fromJson(value);
    ChangeNotifier();
  }
}
