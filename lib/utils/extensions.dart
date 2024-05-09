import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtensions on int{
  Widget get height => SizedBox(height: h);
  Widget get width => SizedBox(width: w);
}