import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '/utils/extensions.dart';

class UI3 extends StatelessWidget {
  const UI3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff060e25),
      body: Column(
        children: [
          10.height,
          SafeArea(
            child: Text(
              'Download',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
          ),
          20.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'List Movie',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15.sp,
                ),
              ),
              Text(
                'Downloading',
                style: TextStyle(
                  color: const Color(0xff2b49e7),
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
          12.height,
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 25.w),
                  color: Colors.grey.withOpacity(0.5),
                  height: 1.h,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 25.w),
                  color: const Color(0xff2b49e7),
                  height: 1.h,
                ),
              )
            ],
          ),
          10.height,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < movieNames.length; i++)
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 10.h),
                      padding:
                          EdgeInsets.only(left: 12.w, top: 10.h, bottom: 10.h),
                      decoration: BoxDecoration(
                          color: const Color(0xff2e2341).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(14.r)),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(
                              'assets/images/movies/${i + 1}.jpg',
                              width: 85.w,
                              height: 85.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          8.width,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                movieNames[i],
                                style: const TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              4.height,
                              Text(
                                'Marvel',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 12.sp,
                                ),
                              ),
                              // 4.height,
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: 40.w,
                                            color: const Color(0xff2b49e7),
                                            height: 1.h,
                                          ),
                                          Container(
                                            width: 80.w,
                                            color: const Color(0xffA3A3A3),
                                            height: 1.h,
                                          ),
                                        ],
                                      ),
                                      4.height,
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            '925kb/s',
                                            style: TextStyle(
                                                color: const Color(0xff2b49e7),
                                                fontSize: 11.sp),
                                          ),
                                          23.width,
                                          Text(
                                            '435/1.7GB',
                                            style: TextStyle(
                                                color: const Color(0xffA3A3A3),
                                                fontSize: 11.sp),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  4.width,
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.pause_circle_outline_rounded,
                                      color: Color(0xffA3A3A3),
                                    ),
                                  ),
                                  PopupMenuButton(
                                    iconColor: const Color(0xffA3A3A3),
                                    offset: Offset(-20, 50.h),
                                    color: const Color(0xff20202d),
                                    itemBuilder: (context) {
                                      return [
                                        const PopupMenuItem(
                                          child: Text(
                                            'Re-download',
                                            style: TextStyle(
                                                color: Colors.white70),
                                          ),
                                        ),
                                        const PopupMenuItem(
                                          child: Text(
                                            'Details',
                                            style: TextStyle(
                                                color: Colors.white70),
                                          ),
                                        ),
                                        const PopupMenuItem(
                                          child: Text(
                                            'Delete',
                                            style: TextStyle(
                                                color: Colors.white70),
                                          ),
                                        )
                                      ];
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  80.height,
                ],
              ),
            ),
          ),
        ],
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
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(Assets.iconsHome, width: 24.w),
              const Icon(
                (CupertinoIcons.search),
                color: Color(0xffA3A3A3),
              ),
              const Icon(
                (Icons.bookmark_outline_rounded),
                color: Color(0xffA3A3A3),
              ),
              SvgPicture.asset(Assets.iconsDownloadSelected, width: 24.w),
              const Icon(
                (Icons.person_outline_rounded),
                color: Color(0xffA3A3A3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> movieNames = [
  "The Shawshank Redemption",
  "The Godfather",
  "The Dark Knight",
  "Schindler's List",
  "The Lord of the Rings: The\nFellowship of the Ring",
  "The Good, the Bad and the Ugly",
  "Forrest Gump",
  "Fight Club",
  "Goodfellas",
  "Interstellar",
  "The Green Mile",
  "Spider-Man: Across the\nSpider-Verse",
  "The Lion King",
  "The Departed",
  "The Intouchables",
  "Operation 'Y' & Other\nShurik's Adventures",
  "WALL·E",
];
