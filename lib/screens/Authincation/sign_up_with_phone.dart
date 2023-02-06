import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/appTextFieldDecoration.dart';

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
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ).onTap((){
          Navigator.pop(context);
        }),

        title: const Text("Sign Up With Phone",style: TextStyle(color: Colors.black),),centerTitle: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Lottie.asset('assets/sign-up.json',height: MediaQuery.of(context).size.height/2)),

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
                    const OptScreen().launch(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
