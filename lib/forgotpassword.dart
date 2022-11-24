import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'resetpassword.dart';
import 'getotp.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Color.fromRGBO(157, 105, 57, 1),
                    )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Forgot Password',
                  style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      color: Color.fromRGBO(157, 105, 57, 1)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'Please Enter your mobile number linked to your account.\nwe will Send an OTP to reset your password.',
              style: GoogleFonts.sourceSansPro(
                  color: Color.fromRGBO(65, 39, 15, 0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text(
              'Mobile Number',
              style: GoogleFonts.sourceSansPro(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: Color.fromRGBO(65, 39, 15, 0.8),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(right: 13, left: 13),
            height: 70,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(255, 255, 255, 1),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.transparent)),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 70,
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: MaterialButton(
              color: Color.fromRGBO(213, 186, 143, 1),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GetOTP()));
              },
              child: Text(
                'Get OTP',
                style: GoogleFonts.sourceSansPro(
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
