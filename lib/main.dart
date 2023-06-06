import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:verify/frame.dart';
// import 'package:verify/language.dart';
import 'package:verify/phone.dart';
import 'package:verify/profile.dart';
import 'package:verify/verify.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    // theme: T,
    routes: {
      'phone': (context) =>MyPhone(),
      'verify' :(context) => MyVerify(mobileNumber: '0000000000',),
      'profile' :(context) => MyProfile(),
      'frame' : (context) => MyFrame(),
      // 'language' :(context) => MyLanguage()
    },
  ));
}


