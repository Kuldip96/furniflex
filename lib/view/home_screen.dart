import 'package:flutter/material.dart';
import 'package:furniflex/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var homecontroller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
        ],
      ),
    );
  }
}