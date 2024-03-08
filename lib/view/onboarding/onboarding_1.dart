import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniflex/common/colors.dart';
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
                  'Back',
                  style: TextStyle(
                    color: Color(0xff262728),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 600.h,
            child: PageView.builder(
                reverse: false,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index % images.length;
                  });
                },
                controller: controller,
                itemBuilder: ((context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          images[index % images.length],
                          height: 246.h,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Getting',
                              style: GoogleFonts.poppins(
                                fontSize: 28.h,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              'Started With',
                              style: GoogleFonts.poppins(
                                fontSize: 28.h,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              'Cricket Box.',
                              style: GoogleFonts.poppins(
                                fontSize: 28.h,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                })),
          ),

          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           SizedBox(
          //             height: height * 0.04,
          //           ),
          //           Center(
          //             child: Image.asset(
          //               'Images/undraw_credit_card_re_blml 1.png',
          //               height: height * 0.340,
          //             ),
          //           ),
          //           SizedBox(
          //             height: height * 0.05,
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 50),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'Pay For',
          //                   style: GoogleFonts.poppins(
          //                       fontSize: 28.h, fontWeight: FontWeight.w700),
          //                 ),
          //                 SizedBox(
          //                   height: height * 0.01,
          //                 ),
          //                 Text(
          //                   'Booking',
          //                   style: GoogleFonts.poppins(
          //                       fontSize: 28.h, fontWeight: FontWeight.w700),
          //                 ),
          //                 SizedBox(
          //                   height: height * 0.01,
          //                 ),
          //                 Text(
          //                   'Easy And Secure.',
          //                   style: GoogleFonts.poppins(
          //                       fontSize: 28.h, fontWeight: FontWeight.w700),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
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
            textDirection: TextDirection.rtl,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 10,
              dotColor: Colors.black,
              // activeDotColor: AppColor().primaryColor,
            ),
          ),

          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(335.w, 46.h)),
              backgroundColor: MaterialStatePropertyAll(
                AppColor.blackColor,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            onPressed: () {
              // Get.to(const BottomNevbar());
            },
            child: Text(
              'NEXT',
              style: GoogleFonts.poppins(
                fontSize: 16.h,
                // color: AppColor().wightColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
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
        margin: EdgeInsets.all(2),
        height: isSelected ? 10 : 10,
        width: isSelected ? 25 : 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // shape: isSelected ? BoxShape.rectangle : BoxShape.circle,
          // color: isSelected ? AppColor().primaryColor : Colors.black,
        ),
      ),
    );
  }
}
