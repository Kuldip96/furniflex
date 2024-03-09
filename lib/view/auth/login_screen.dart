import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            
            height: 300.h,
            width: double.infinity,
            child: Stack(
              children: [Image.asset('images/assets/sofa 1 1.png')],
            ),
          ),
        ],
      ),
    );
  }
}
