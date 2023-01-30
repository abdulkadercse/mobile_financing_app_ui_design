import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/2.50,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0),bottomRight:Radius.circular(80.0) )
                ),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(

                    children: [
                      Text("Welcome Back"),
                      Text("Alexander Michael"),
                    ],
                  ),
                  Icon(Icons.menu)
                ],
              ),
              ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Transactions",style: TextStyle(color: AppColor.primaryColor,fontSize: 16.sp,fontWeight: FontWeight.bold),),
                      Text("See all",style: TextStyle(color: const Color(0xffFE6310),fontSize: 16.sp,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                ListTile(
                  leading: Image.asset("assets/ntt.jpg"),
                  title: const Text("NTT Inc.",style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),),
                  subtitle: const Text("25 OCT 2021 12:22"),
                  trailing: Text("5.81",style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold,fontSize: 18.sp),),
                ),
                SizedBox(height: 10.0.h,),
                ListTile(
                  leading: Image.asset("assets/ntt.jpg"),
                  title: const Text("NTT Inc.",style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),),
                  subtitle: const Text("25 OCT 2021 12:22"),
                  trailing: Text("5.81",style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold,fontSize: 18.sp),),
                ),
                SizedBox(height: 10.0.h,),
                ListTile(
                  leading: Image.asset("assets/ntt.jpg"),
                  title: const Text("NTT Inc.",style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),),
                  subtitle: const Text("25 OCT 2021 12:22"),
                  trailing: Text("5.81",style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold,fontSize: 18.sp),),
                ),
              ],
            )
            ],
          ),
        )
      ),
    );
  }
}
