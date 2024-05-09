import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/ui/ui_1/widgets/custom_bottom_bar.dart';
import '/ui/ui_1/widgets/custom_search_bar.dart';
import '/ui/ui_1/widgets/search_chip.dart';
import '/utils/extensions.dart';

class UI1 extends StatelessWidget {
  const UI1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff060e25),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchBar(),
          5.height,
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: const Text(
              'Recent Searches',
              style: TextStyle(color: Colors.white70),
            ),
          ),
          15.height,
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Wrap(
              spacing: 12.w,
              runSpacing: 12.h,
              children: const [
                SearchChip(title: 'Marvel'),
                SearchChip(title: 'Captain America'),
                SearchChip(title: 'Captain Marvel'),
                SearchChip(title: 'Thor'),
              ],
            ),
          ),
          30.height,
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: const Text(
              'Popular',
              style: TextStyle(color: Colors.white70),
            ),
          ),
          10.height,
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 10; i += 2)
                    Container(
                      margin: EdgeInsets.only(right: 12.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/movies/${i + 1}.jpg",
                        height: 150.h,
                      ),
                    )
                ],
              ),
            ),
          ),
          30.height,
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: const Text(
              'Popular',
              style: TextStyle(color: Colors.white70),
            ),
          ),
          10.height,
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 10; i < 15; i++)
                    Container(
                      margin: EdgeInsets.only(right: 12.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        "assets/images/movies/${i}.jpg",
                        height: 150.h,
                      ),
                    )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: const CustomBottomBar(),
    );
  }
}
