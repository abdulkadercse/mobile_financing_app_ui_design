
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

final  appTextDecoration = InputDecoration(
    hintStyle: TextStyle(color: AppColor.textfieldColor),
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderSide: BorderSide(
          color: Color(
            0xffDADADA,
          ),
          width: 2),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ));