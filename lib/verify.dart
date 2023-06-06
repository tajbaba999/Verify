import 'package:flutter/material.dart';

class MyVerify extends StatefulWidget {
  const MyVerify({super.key});

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
  @override
  Widget build(BuildContext context) {
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
              "code is sent to 899938493",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            //boxes to add otp
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
              onPressed: () {
                // Handle button press
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

