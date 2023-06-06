import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:verify/phone.dart';
import 'package:verify/profile.dart';

class MyVerify extends StatefulWidget {
  final String mobileNumber;

  const MyVerify({Key? key, required this.mobileNumber}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

// void _navigateToOtpPage() {
//     Navigator.push(context as BuildContext ,
//         MaterialPageRoute(builder: (context) => MyProfile()));
// }

class _MyVerifyState extends State<MyVerify> { 

  final FirebaseAuth auth = FirebaseAuth.instance;

  void _navigateToProfilePage() {
    Navigator.push(
      context as BuildContext,
      MaterialPageRoute(builder: (context) => MyProfile()),
    );
  }

  @override
  Widget build(BuildContext context) {

    var code = "",
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Verify number",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "code is sent to ${widget.mobileNumber}",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            //boxes to add otp
            Pinput(
              length :6,
              showCursor : true,
              onChanged: (value){
                code=value;
              }
            )
            SizedBox(height: 20.0),
            Row(

              children: [
                Text(
                  "Didn't recieve the code?",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Text(
                  "Request Again",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),

              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed:() async{

                PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: MyPhone.verify, smsCode: code);

                // Sign the user in (or link) with the credential
                await auth.signInWithCredential(credential);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                primary: Colors.blue[900],
              ),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "VERIFY AND CONTINUE",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:verify/phone.dart';
// // Import the verify.dart file
//
// class _MyPhoneState extends State<MyPhone> {
//   TextEditingController _mobileNumberController = TextEditingController();
//
//   @override
//   void dispose() {
//     _mobileNumberController.dispose();
//     super.dispose();
//   }
//
//   void _navigateToVerifyPage() {
//     // Navigate to the verify.dart page
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => VerifyPage()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Verify number",
//               style: TextStyle(
//                   fontSize: 22.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               "code is sent to 899938493",
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 10.0),
//             //boxes to add otp
//             SizedBox(height: 20.0),
//             Row(
//
//               children: [
//                 Text(
//                   "Didn't recieve the code?",
//                   style: TextStyle(
//                       fontSize: 22.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black
//                   ),
//                 ),
//                 Text(
//                   "Request Again",
//                   style: TextStyle(
//                       fontSize: 22.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black
//                   ),
//                 ),
//
//               ],
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle button press
//               },
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(vertical: 15.0),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 primary: Colors.blue[900],
//               ),
//               child: Container(
//                 width: double.infinity,
//                 alignment: Alignment.center,
//                 child: Text(
//                   "VERIFY AND CONTINUE",
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

