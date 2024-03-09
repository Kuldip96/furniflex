import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniflex/common/colors.dart';
import 'package:furniflex/view/auth/login_screen.dart';
import 'package:furniflex/view/onboarding/page_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  final PageController controller = PageController();
  List<String> images = [
    "images/assets/5_TW92ZWRfaG91c2VfMi0xNQ [Converted] 1.png",
    "images/assets/16 [Converted] 1.png",
    "images/assets/Moving_house_services_4_03 [Converted] 1.png",
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            color: AppColor.whiteColor,
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xff262728),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          SizedBox(
            height: 400.h,
            child: PageView(
              reverse: false,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              controller: controller,
              children: [
                PageViewScreen(
                  images:
                      'images/assets/Moving_house_services_4_03 [Converted] 1.png',
                  title: 'On-Time Delivery',
                  subtitle:
                      'Elevate your space with our stylish rental furniture, without the worry of delays.',
                ),
                PageViewScreen(
                  images:
                      'images/assets/5_TW92ZWRfaG91c2VfMi0xNQ [Converted] 1.png',
                  title: 'Free Delivery',
                  subtitle:
                      'Experience the joy of hassle-free delivery, straight to your doorstep.',
                ),
                PageViewScreen(
                  images: 'images/assets/16 [Converted] 1.png',
                  title: 'One Time Free Relocation',
                  subtitle:
                      'Planning a move? Let us make it stress-free and stylish! Enjoy a One Time FREE relocation offer exclusively with us.',
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            axisDirection: Axis.horizontal,
            textDirection: TextDirection.ltr,
            effect: const ExpandingDotsEffect(
              dotHeight: 3,
              dotWidth: 6,
              dotColor: AppColor.secoundColor,
              activeDotColor: AppColor.primeryColor,
            ),
          ),

          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.sp),
            child: currentIndex == 0
                ? const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: CircleAvatar(
                              backgroundColor: Color(0xffF1DAC7),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: CircleAvatar(
                              backgroundColor: Color(0xffE7C3A1),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: CircleAvatar(
                              backgroundColor: Color(0xffDDAC7B),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: AppColor.primeryColor,
                            child: Icon(
                              Icons.arrow_forward,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : currentIndex == 1
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Back',
                              style: GoogleFonts.outfit(
                                fontSize: 14.h,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffF1DAC7),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffE7C3A1),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffDDAC7B),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: AppColor.primeryColor,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Back',
                              style: GoogleFonts.outfit(
                                fontSize: 14.h,
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Get.to(const LoginScreen());
                            },
                            child: Container(
                              height: 46.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                  color: AppColor.primeryColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text(
                                  'Get started',
                                  style: GoogleFonts.outfit(
                                    color: AppColor.whiteColor,
                                    fontSize: 14.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
          ),
          SizedBox(
            height: 70.h,
          ),
          // Spacer(),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        margin: const EdgeInsets.all(2),
        height: isSelected ? 5 : 5,
        width: isSelected ? 25 : 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //shape: isSelected ? BoxShape.rectangle : BoxShape.circle,
          //color: isSelected ? AppColor().primaryColor : Colors.black,
        ),
      ),
    );
  }
}
