import 'package:flutter/material.dart';

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
    Future.delayed(Duration(seconds: 5)).then((value) => {
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
    return const Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 70.0,
          child: Text(
            "Yiyi",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
