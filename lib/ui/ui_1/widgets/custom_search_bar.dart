import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                icon: const Icon(Icons.cancel_outlined, color: Colors.white38),
              ),
            ),
            hintText: 'Search by title, genre, actor',
            hintStyle: const TextStyle(color: Colors.white38),
          ),
          onChanged: (value) => setState(() {}),
          style: const TextStyle(color: Colors.white60),
        ),
      ),
    );
  }
}
