import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/app_color.dart';
import '../Authincation/sign_in.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> goToHomeScreen() async {
    Future.delayed(const Duration(seconds: 5)).then((value) => {
          SignIn().launch(context, isNewTask: true),
        });
  }

  @override
  void initState() {
    goToHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Center(
        child: CircleAvatar(
          backgroundColor: AppColor.primaryColor,
          radius: 70.0,
          child: Text(
            "Financing App",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0.sp),
          ),
        ),
      ),
    );
  }
}
