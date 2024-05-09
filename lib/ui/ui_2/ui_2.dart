import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_12/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ui_1/widgets/custom_bottom_bar.dart';

class UI2 extends StatefulWidget {
  const UI2({super.key});

  @override
  State<UI2> createState() => _UI2State();
}

class _UI2State extends State<UI2> {
  final TextEditingController controller =
      TextEditingController(text: 'comedy');

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff060e25),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: const Color(0xff283349),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon:
                      const Icon(CupertinoIcons.search, color: Colors.white38),
                  suffixIcon: Visibility(
                    visible: controller.text.isNotEmpty,
                    child: IconButton(
                      onPressed: () => setState(() => controller.clear()),
                      icon: const Icon(Icons.cancel_outlined,
                          color: Colors.white38),
                    ),
                  ),
                  hintText: 'Search by title, genre, actor',
                  hintStyle: const TextStyle(color: Colors.white38),
                ),
                onChanged: (value) => setState(() {}),
                style: const TextStyle(color: Colors.white60),
              ),
            ),
          ),
          5.height,
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Visibility(
              visible: controller.text.isNotEmpty,
              child: Text(
                "Results for \"${controller.text}\"",
                style: const TextStyle(color: Colors.white70),
              ),
            ),
          ),
          20.height,
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 100.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 3,
                crossAxisCount: 3,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.h,
              ),
              itemCount: 17,
              itemBuilder: (context, i) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/images/movies/${i + 1}.jpg",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: const CustomBottomBar(),
    );
  }
}
