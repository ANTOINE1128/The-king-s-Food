import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_foodlyy/common/background_container.dart';
import 'package:restaurant_foodlyy/common/custom_appbar.dart';
import 'package:restaurant_foodlyy/constants/constants.dart';
import 'package:restaurant_foodlyy/views/home/widget/orders/new_orders.dart';
import 'package:restaurant_foodlyy/views/home/widget/orders/preparing.dart';

import 'home_tabs.dart';
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
          HomeTabs(tabController: _tabController),
          SizedBox(
            height: 15.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            height: height * 0.7,
            color: Colors.transparent,
            child: TabBarView(
              controller: _tabController,
              children: [
                 NewOrders(),
                 Preparing(),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.purple,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
