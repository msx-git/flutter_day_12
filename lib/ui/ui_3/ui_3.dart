import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';

class UI3 extends StatelessWidget {
  const UI3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff060e25),
      body: const Column(
        children: [],
      ),
      floatingActionButton: Container(
        height: 60.h,
        width: 340.w,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.03),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(Assets.iconsHome,width: 24.w),
              const Icon((CupertinoIcons.search),color: Color(0xffA3A3A3),),
              const Icon((Icons.bookmark_outline_rounded),color: Color(0xffA3A3A3),),
              SvgPicture.asset(Assets.iconsDownloadSelected,width: 24.w),
              const Icon((Icons.person_outline_rounded),color: Color(0xffA3A3A3),),
            ],
          ),
        ),
      ),
    );
  }
}
