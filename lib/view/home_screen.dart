import 'package:flutter/material.dart';
import 'package:furniflex/home_controller.dart';
import 'package:furniflex/lang_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var homecontroller = Get.put(HomeController());
  var langcontroller = Get.put(LangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('How are yo'.tr),
      ),
      body: Column(
        children: [
          Obx(
            () => Text(
              homecontroller.a.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
          IconButton(
            onPressed: () {
              homecontroller.increament();
            },
            icon: Icon(Icons.add),
          ),
          TextButton(
            onPressed: () {
              langcontroller.changLocale('hi', 'IN');
            },
            child: Text('hindi'.tr),
          ),
          TextButton(
            onPressed: () {
              langcontroller.changLocale('en', 'US');
            },
            child: Text('English'),
          ),
          TextButton(
            onPressed: () {
              langcontroller.changLocale('fr', 'FR');
            },
            child: Text('france'),
          ),
          Text(
            'pune'.tr,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
