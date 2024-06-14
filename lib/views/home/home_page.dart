import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_foodlyy/common/app_style.dart';
import 'package:restaurant_foodlyy/common/background_container.dart';
import 'package:restaurant_foodlyy/common/custom_appbar.dart';
import 'package:restaurant_foodlyy/common/tab_widget.dart';
import 'package:restaurant_foodlyy/constants/constants.dart';

import 'widget/home_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: orderList.length, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        flexibleSpace: const CustomAppBar(),
      ),
      body: BackGroundContainer(
          child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 15.h,
          ),
          const HomeTiles(),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Container(
              height: 25.h,
              width: width,
              decoration: BoxDecoration(
                color: kOffWhite,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    color: kPrimary, borderRadius: BorderRadius.circular(25.r)),
                labelColor: kLightWhite,
                dividerColor: Colors.transparent,
                unselectedLabelColor: kGrayLight,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                labelPadding: EdgeInsets.zero,
                labelStyle: appStyle(12, kLightWhite, FontWeight.normal),
                tabs: List.generate(orderList.length, (i) {
                  return TabWidget(text: orderList[i]);
                }),
              ),
            ),
          )
        ],
      )),
    );
  }
}
