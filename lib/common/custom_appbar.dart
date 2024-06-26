import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_foodlyy/common/app_style.dart';
import 'package:restaurant_foodlyy/common/reusable_text.dart';
import 'package:restaurant_foodlyy/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100.h,
      padding: EdgeInsets.fromLTRB(12.w, 30.h, 12.w, 0),
      color: kSecondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(

            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage('assets/images/profile.jpg'),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText (
                    text:"King's Food",
                    style:appStyle( 14, Colors.white, FontWeight.bold)
                    ),

                    ReusableText (
                    text: 'Mejdlaya-Zgharta karmaliyeh Road',
                    style:appStyle( 8, Colors.white, FontWeight.normal)
                    ),
                  ],
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/icons/open_sign.svg',
            height: 35.h,
            width: 35.w,
          )
        ],
        ),
    );
  }
}