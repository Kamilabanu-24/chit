import 'package:chit_ui/source/commonwidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: MyState(),
    );
  }
}

class MyState extends StatefulWidget {
  const MyState({super.key});

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  TextEditingController emailorphonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
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
          shape: BoxShape.rectangle,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 283,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 143),
              child: Text('Hello,\nWelcome to Luxury',
                  style: GoogleFonts.belleza(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(157, 105, 57, 1))),
            ),
            SizedBox(height: 10),
            MyTextField(
              borderradius: 6,
              yes: true,
              fillcolor: Color.fromRGBO(255, 255, 255, 1),
              sidecolor: Colors.transparent,
              height: 70,
              width: double.infinity,
              fieldcontroller: emailorphonecontroller,
              leftpadding: 16,
              rightpadding: 16,
              size: 14,
              textcolor: Color.fromRGBO(65, 39, 15, 0.8),
              text: 'Email Address or Password',
              box: 40,
              property: Alignment.centerLeft,
              app: true,
            ),
            SizedBox(height: 10),
            MyTextField1(
              borderradius: 6,
              yes: true,
              fillcolor: Color.fromRGBO(255, 255, 255, 1),
              sidecolor: Colors.transparent,
              height: 70,
              width: double.infinity,
              fieldcontroller: passwordcontroller,
              leftpadding: 16,
              rightpadding: 16,
              suffixicon: Icons.visibility_off,
              size: 14,
              text: 'Password',
              textcolor: Color.fromRGBO(65, 39, 15, 0.8),
              property: Alignment.centerLeft,
              app: true,
              box: 12,
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 2,
            ),
            MyText1(
              text: 'Forgot password?',
              size: 14,
              leftpadding: 253,
              rightpadding: 10,
              textcolor: Color.fromRGBO(65, 39, 15, 0.8),
              property: Alignment.centerRight,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: 70,
              width: double.infinity,
              child: MaterialButton(
                color: Color.fromRGBO(227, 210, 183, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {},
                child: Text(
                  'Sign in',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 1),
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
