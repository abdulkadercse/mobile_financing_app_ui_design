import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_financing_app_ui/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/appTextFieldDecoration.dart';

class PartnershipScreen extends StatefulWidget {
  const PartnershipScreen({Key? key}) : super(key: key);

  @override
  State<PartnershipScreen> createState() => _PartnershipScreenState();
}

class _PartnershipScreenState extends State<PartnershipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        title: const Text(
          "Partnership",
          style:
              TextStyle(color: Color(0xff100D40), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff100D40),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 8.0, bottom: 8.0),
            child: Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0).r,
                  color: Colors.grey),
              child: Icon(Icons.arrow_circle_left_outlined),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0).h,
        child: Column(
          children: [
            GestureDetector(
              onTap: (){

              },
              child: AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: appTextDecoration.copyWith(
                  hintText: "Search ID or Name",
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 20.0.h,),
            Container(
              width: double.infinity,
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0).r,
                color: Colors.grey

              ),child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ntt.jpg",width: 70.w,),
                  SizedBox(width: 10.0.w,),
                  Column(
                    mainAxisAlignment:MainAxisAlignment.start ,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NTT Inc. "),
                      SizedBox(height: 3.0.h),
                      Text("Registered Since , 23 Nov 2021 "),
                      SizedBox(height: 30.0.h),
                      Row(
                        children: [

                          Container(
                            width: 80.w,
                            height: 34.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0).r,
                              color: Color(0xff100D40),
                            ),child: Center(child: Text("Request Loan",style: TextStyle(color: Colors.white,fontSize: 11),)),
                          ),
                          SizedBox(width: 10.0.h),
                          Container(
                            width: 80.w,
                            height: 34.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0).r,
                              color: Color(0xff100D40),
                            ),child: Center(child: Text("Quote",style: TextStyle(color: Colors.white,fontSize: 11),)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
            ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
