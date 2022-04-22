import 'package:flutter/material.dart';

class DropListModel {
  DropListModel(this.listOptionItems);

  final List<OptionItem> listOptionItems;
}

class OptionItem {
  final String? id;
  final String? title;

  OptionItem({@required this.id, @required this.title});
}
class BuoiLam {
  String? thu;
  String? sang;
  String? chieu;
  String? toi;

  BuoiLam(String thu, String sang, String chieu, String toi) {
    this.thu = thu;
    this.sang = sang;
    this.chieu = chieu;
    this.toi = toi;
  }
}