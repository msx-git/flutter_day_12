import 'package:flutter/material.dart';
import 'package:flutter_day_12/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchChip extends StatelessWidget {
  const SearchChip({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.watch_later_outlined,
            color: Color(0xff2b49e7),
          ),
          6.width,
          Text(title, style: const TextStyle(color: Color(0xff2b49e7))),
        ],
      ),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      color: MaterialStateProperty.all(const Color(0xff1a2456)),
    );
  }
}
