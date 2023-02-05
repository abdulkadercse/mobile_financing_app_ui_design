import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:mobile_financing_app_ui/screens/Authincation/sign_up.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/appTextFieldDecoration.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';
import 'forget_password.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0).w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextField(
              textFieldType: TextFieldType.EMAIL,
              decoration: appTextDecoration.copyWith(
                  hintText: "Enter your email address", prefixIcon: const Icon(Icons.person)),
            ),
            SizedBox(height: 10.0.h),
            AppTextField(
              textFieldType: TextFieldType.PASSWORD,
              decoration: appTextDecoration.copyWith(
                  hintText: "Enter Your Password",
                  prefixIcon: const Icon(Icons.lock)),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        activeColor: AppColor.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                     Text("Remember me",
                        style: TextStyle(
                          color: AppColor.textFieldColor,
                          fontSize: 14.sp,
                        ))
                  ],
                ),
                Text(
                  "Forget your password?",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ).onTap(()=>const ForgotPassword().launch(context))
              ],
            ),
            SizedBox(
              height: 10.0.h,
            ),
            CustomButton(
              onPressed: (){

              },
                buttonText: 'Sign In',
                buttonTextColor: Colors.white,
                buttonDecoration: buttonDecoration,),
            SizedBox(
              height: 10.0.h,
            ),
            CustomButton(
                onPressed: (){
                  SignUpScreen().launch(context);
                },
                buttonText: 'Sign Up',
                buttonTextColor: AppColor.primaryColor,
                buttonDecoration: buttonDecoration.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
