import 'package:chit_app/button_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgot_passowrd_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chit App',
      home: ChitApp(),
    );
  }
}

class ChitApp extends StatefulWidget {
  const ChitApp({super.key});

  @override
  State<ChitApp> createState() => _ChitAppState();
}

class _ChitAppState extends State<ChitApp> {
  TextEditingController emailorphonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Luxury.jpg'),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.rectangle,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 143),
              child: Text('Hello,\nWelcome to Luxury',
                  style: GoogleFonts.belleza(
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(157, 105, 57, 1))),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 166),
              child: Text(
                'Email Address or Phone number',
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(65, 39, 15, 0.8)),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: 70,
              width: double.infinity,
              child: TextField(
                controller: emailorphonecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 301),
              child: Text(
                'Password',
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color.fromRGBO(65, 39, 15, 0.8)),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              height: 70,
              child: TextField(
                obscureText: true,
                controller: passwordcontroller,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.transparent)),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 16, left: 16),
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password ?',
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(65, 39, 15, 0.8)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              height: 70,
              width: double.infinity,
              leftpadding: 16,
              rightpadding: 16,
              borderRadius: 12,
              click: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()));
              },
              text: ('Sign in'),
              textcolor: Color.fromRGBO(225, 255, 255, 1),
              size: 14,
              backgroundcolor: Color.fromRGBO(213, 186, 143, 1),
            ),
          ],
        ),
      ),
    );
  }
}
