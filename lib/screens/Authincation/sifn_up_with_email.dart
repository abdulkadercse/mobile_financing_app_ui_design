import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/appTextFieldDecoration.dart';
import 'package:mobile_financing_app_ui/screens/Authincation/sign_in_success.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_dot.dart';

class SignUpWithEmail extends StatefulWidget {
  const SignUpWithEmail({Key? key}) : super(key: key);

  @override
  State<SignUpWithEmail> createState() => _SignUpWithEmailState();
}

class _SignUpWithEmailState extends State<SignUpWithEmail> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
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
              Text(
                "We need an email for notifications and a\n password for login purpose.",
                style: TextStyle(fontSize: 14.sp, color: AppColor.primaryColor),
              ),
              SizedBox(
                height: 15.0.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "E-mail",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor),
                  ),
                  SizedBox(height: 8.0.h,),
                  AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                    decoration: appTextDecoration.copyWith(
                        hintText: "Enter your email address"),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Set a Password",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor),
                      ),
                      Text(
                        "Min. 8 Characters",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration:
                        appTextDecoration.copyWith(hintText: "********"),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        activeColor: AppColor.primaryColor,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                            text: 'I agree to the ',
                            style: TextStyle(
                              fontSize: 12.sp, color: AppColor.primaryColor,),
                            children: [
                              TextSpan(
                                  text: 'Terms of service',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0.sp,
                                      color: AppColor.primaryColor)),
                              TextSpan(
                                  text: ' and',
                                  style: TextStyle(

                                      fontSize: 12.0.sp,
                                      color: AppColor.primaryColor)),
                              TextSpan(
                                text: ' Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp, color: AppColor.primaryColor),
                              ),
                            ]),
                      ),
                    ],
                  ),

                  // Container(
                  //     alignment: Alignment.center,
                  //     child: SmallButton(buttonText: "Sign Up", onPressed: (){})),

                  CustomButton(
                    onPressed: ()=>const SignInSuccess().launch(context),
                    buttonText: 'Sign In',
                    buttonTextColor: Colors.white,
                    buttonDecoration: buttonDecoration,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
