import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/app_color.dart';
import '../../widgets/small_button.dart';
import '../Review Screen/review_screen.dart';

class DocumentationScreen extends StatefulWidget {
  const DocumentationScreen({Key? key}) : super(key: key);

  @override
  State<DocumentationScreen> createState() => _DocumentationScreenState();
}

class _DocumentationScreenState extends State<DocumentationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Documentation",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor,
                      fontSize: 25.sp),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Center(
                child: Image.asset(
                  "assets/document.png",
                  width: 100,
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "you need to provide supporting documents",
                style: TextStyle(color: AppColor.primaryColor, fontSize: 16.sp),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                width: 258.w,
                height: 67.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0).r,
                    color: AppColor.primaryColor),
                child: Center(
                    child: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                  size: 40,
                )),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Text(
                "Use Camera",
                style: TextStyle(color: AppColor.primaryColor, fontSize: 16.sp),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                width: 258.w,
                height: 67.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0).r,
                    color: AppColor.primaryColor),
                child: Center(
                    child: Icon(
                  Icons.photo,
                  color: Colors.white,
                  size: 40,
                )),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Text(
                "Select file documets from the gallary",
                style: TextStyle(color: AppColor.primaryColor, fontSize: 16.sp),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                alignment: Alignment.center,
                child: SmallButton(
                  buttonText: 'Continue',
                  onPressed: () => const ReviewScreen().launch(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
