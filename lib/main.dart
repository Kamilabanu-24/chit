import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chitpage1.dart';

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
      home: mystate(),
    );
  }
}

class mystate extends StatefulWidget {
  const mystate({super.key});

  @override
  State<mystate> createState() => _mystateState();
}

class _mystateState extends State<mystate> {
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
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: 60,
              width: 60,
              child: MaterialButton(
                color: Color.fromRGBO(213, 186, 143, 1),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text(
                  'Sign in',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
