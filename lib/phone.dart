import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController _mobileNumberController = TextEditingController();

  @override
  void dispose() {
    _mobileNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Please enter your mobile number",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "You'll receive a 4-digit code",
              style: TextStyle(fontSize: 16.0,color: Colors.grey),
            ),
            Text(
              "to verify next",
              style: TextStyle(fontSize: 16.0,color: Colors.grey),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(
                //   'assets/indian_flag.png',
                //   width: 30.0,
                //   height: 30.0,
                // ),
                SizedBox(width: 10.0),
                Text(
                  "+91",
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    controller: _mobileNumberController,
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: InputDecoration(
                      hintText: "Enter your mobile number",
                      border: OutlineInputBorder(),
                    ),
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
                    borderRadius: BorderRadius.zero, // Remove round edges
                  ),
                  primary: Colors.blue[900],
              ),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "CONTINUE",
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
