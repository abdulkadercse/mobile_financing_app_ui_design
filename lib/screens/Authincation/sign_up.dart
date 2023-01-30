import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/appTextFieldDecoration.dart';
import '../../widgets/custom_dot.dart';
import '../../widgets/small_button.dart';
import 'otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              children: [
                const CustomDot(),
                SizedBox(width: 5.0.w),
                const CustomDot(),
                SizedBox(width: 5.0.w),
                const CustomDot(),
                SizedBox(width: 5.0.w),
                const CustomDot(),
                SizedBox(width: 5.0.w),
              ],
            ),
            SizedBox(
              height: 10.0.h,
            ),

            RichText(
              text: TextSpan(
                  text: 'Enter your ',
                  style:
                      TextStyle(fontSize: 14.sp, color: AppColor.primaryColor),
                  children: [
                    TextSpan(
                        text: 'phone number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0.sp,
                            color: AppColor.primaryColor)),
                    TextSpan(
                      text: ' below.',
                      style: TextStyle(
                          fontSize: 14.sp, color: AppColor.primaryColor),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Text(
              "We will send a 4 digit verification code to verify your phone number.",
              style: TextStyle(fontSize: 14.sp, color: AppColor.primaryColor),
            ),
            SizedBox(
              height: 20.0.h,
            ),

            SizedBox(
              height: 10.0.h,
            ),
            Text(
              "Phone Number",
              style: TextStyle(fontSize: 14.sp,color: AppColor.primaryColor,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            AppTextField(
              textFieldType: TextFieldType.NUMBER,
              decoration: appTextDecoration.copyWith(
                hintText: "Enter Your phone number",
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: SmallButton(
                buttonText: 'Send OPT',
                onPressed: () {
                  OptScreen().launch(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
