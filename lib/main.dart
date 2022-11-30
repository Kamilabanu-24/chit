import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxuryscreen/Text/MyTextField/MyTextField.dart';

import 'Text/MyText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Chit UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailorphonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/luxurygold.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 283,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 143),
              child: Text(
                'Hello,\nWelcome to Luxury',
                style: GoogleFonts.belleza(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(157, 105, 57, 1)),
              ),
            ),
            MyText(
              text: 'Email Address or Phone Number',
              textcolor: Color.fromRGBO(65, 39, 15, 0.8),
              size: 14,
              box: 40,
              height: 70,
              width: double.infinity,
              filled: true,
              fillcolor: Color.fromRGBO(255, 255, 255, 1),
              leftpadding: 16,
              rightpadding: 16,
              fieldcontroller: emailorphonecontroller,
              borderradius: 6,
              sidecolor: Colors.transparent,
            ),
            MyTextField(
                text: 'Password',
                textcolor: Color.fromRGBO(65, 39, 15, 0.8),
                size: 14,
                box: box,
                height: height,
                width: width,
                filled: filled,
                fillcolor: fillcolor,
                leftpadding: leftpadding,
                rightpadding: rightpadding,
                fieldcontroller: fieldcontroller,
                borderradius: borderradius,
                sidecolor: sidecolor,
                icon: icon)
          ],
        ),
      ),
    );
  }
}
