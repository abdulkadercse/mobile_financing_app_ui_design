import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:mobile_financing_app_ui/screens/Authincation/account_create.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../widgets/custom_dot.dart';
import '../../widgets/small_button.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({Key? key}) : super(key: key);

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.mainColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0.h,
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
                height: 20.0.h,
              ),
              RichText(
                maxLines: 2,
                text: TextSpan(
                    text: 'Enter the 4 digit ',
                    style: TextStyle(
                        fontSize: 14.sp, color: AppColor.primaryColor,),
                    children: [
                      TextSpan(
                          text: 'verification code',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0.sp,
                              color: AppColor.primaryColor)),
                      TextSpan(
                        text: ' sent to your phone.',
                        style: TextStyle(
                            fontSize: 14.sp, color: AppColor.primaryColor),
                      ),
                    ]),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Text(
                "Verification Code",
                style: TextStyle(fontSize: 14.sp,color: AppColor.primaryColor,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 70.w,
                    height: 68.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onSaved: (value1) {},
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "0",
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70.w,
                    height: 68.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onSaved: (value1) {},
                      decoration: const InputDecoration(
                        hintText: "0",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70.w,
                    height: 68.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onSaved: (value1) {},
                      decoration: const InputDecoration(
                        hintText: "0",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70.w,
                    height: 68.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      // onSaved: (value1){
                      //
                      // },
                      decoration: const InputDecoration(
                        hintText: "0",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.repeat,
                          size: 12.sp, color: AppColor.primaryColor),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Resend",
                        style: TextStyle(fontSize: 12.sp,fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.pen,
                          size: 12.sp, color: AppColor.primaryColor),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Change Phone  Number",
                        style: TextStyle(fontSize: 12.sp,fontStyle: FontStyle.italic),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: SmallButton(
                    buttonText: 'Continue',
                    onPressed: () => const AccountCreate().launch(context),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
