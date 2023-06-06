

import 'package:flutter/material.dart';
import 'package:verify/language.dart';
import 'package:verify/phone.dart';
import 'package:verify/profile.dart';
import 'package:verify/verify.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) =>MyPhone(),
      'verify' :(context) => MyVerify(),
      'profile' :(context) => MyProfile(),
      'language' :(context) => MyLanguage()
    },
  ));
}


