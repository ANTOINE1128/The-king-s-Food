import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_foodlyy/common/background_container.dart';
import 'package:restaurant_foodlyy/common/custom_appbar.dart';
import 'package:restaurant_foodlyy/constants/constants.dart';

import 'widget/home_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        flexibleSpace: const CustomAppBar(),
      ),
      body:  BackGroundContainer(
        child:ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 15.h,
            ),
            const HomeTiles(),
          ],
        )
      ),
    );
  }
}
