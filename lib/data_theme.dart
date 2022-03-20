import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/theme.dart';
import 'package:get_app/themes.dart';

class DataTheme extends StatelessWidget {
  const DataTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home: ChangeTheme(),

    );
  }
}
