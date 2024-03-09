import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniflex/common/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PageViewScreen extends StatefulWidget {
  String? images;
  String? title;
  String? subtitle;
  PageViewScreen({super.key, this.images, this.title, this.subtitle});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            widget.images ?? "",
            height: 246.h,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title ?? "",
                style: GoogleFonts.outfit(
                  fontSize: 24.h,
                  color: AppColor.primeryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                widget.subtitle ?? "",
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  color: const Color(0xff262728),
                  fontSize: 18.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
