import 'package:flutter/widgets.dart';
import 'package:learn_flutter_2022/screens/ui/statefullwidget/statefull_widget.dart';
import 'package:learn_flutter_2022/screens/ui/widget/appbar.dart';

class CatalogModel {
  final String widgetName;
  final Widget destinationScreen;

  const CatalogModel({required this.widgetName, required this.destinationScreen});
  static List<CatalogModel> toList(){
    return [
      const CatalogModel(widgetName : 'StatefulWidget' , destinationScreen: BuildWidget()),
      const CatalogModel(widgetName: 'AppBar', destinationScreen: DeMoAppBar()),
    ];
  }
}
