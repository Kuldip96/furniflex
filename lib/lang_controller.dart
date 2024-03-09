import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangController extends GetxController {
  changLocale(String langcode, String countrycode) {
    var local = Locale(langcode, countrycode);

    Get.updateLocale(local);
  }
}
