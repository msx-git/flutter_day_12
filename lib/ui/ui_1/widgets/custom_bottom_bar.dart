import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 340.w,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.03),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(Assets.iconsHome, width: 24.w),
            const Icon(
              (CupertinoIcons.search),
              color: Color(0xff2c52e8),
            ),
            const Icon(
              (Icons.bookmark_outline_rounded),
              color: Color(0xffA3A3A3),
            ),
            SvgPicture.asset(Assets.iconsDownload, width: 24.w),
            const Icon(
              (Icons.person_outline_rounded),
              color: Color(0xffA3A3A3),
            ),
          ],
        ),
      ),
    );
  }
}
