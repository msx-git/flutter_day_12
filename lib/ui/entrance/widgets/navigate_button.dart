import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigateButton extends StatelessWidget {
  const NavigateButton(
      {super.key, required this.title, required this.navigateTo});

  final String title;
  final Widget navigateTo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.grey),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => navigateTo),
        ),
        child: Ink(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded, size: 18.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
