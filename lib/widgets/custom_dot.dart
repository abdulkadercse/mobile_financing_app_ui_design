import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_color.dart';
class CustomDot extends StatelessWidget {
  const CustomDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.w,
      width: 8.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0).r,
          color: AppColor.primaryColor
      ),
    );
  }
}