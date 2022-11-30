import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText1 extends StatelessWidget {
  final String text;
  final double size;
  final double leftpadding;
  final double rightpadding;
  final Color textcolor;
  final Alignment property;
  const MyText1({
    super.key,
    required this.text,
    required this.size,
    required this.leftpadding,
    required this.rightpadding,
    required this.textcolor,
    required this.property,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: property,
      padding: EdgeInsets.only(left: leftpadding, right: rightpadding),
      child: Text(
        text,
        style: GoogleFonts.sourceSansPro(
            fontSize: size,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  final double borderradius;
  final bool yes;
  final Color fillcolor;
  final Color sidecolor;
  final double height;
  final double width;
  final TextEditingController fieldcontroller;
  final double leftpadding;
  final double rightpadding;
  final String text;
  final double size;
  final Color textcolor;
  final double box;
  final Alignment property;
  final bool app;
  const MyTextField({
    super.key,
    required this.borderradius,
    required this.yes,
    required this.fillcolor,
    required this.sidecolor,
    required this.height,
    required this.width,
    required this.fieldcontroller,
    required this.leftpadding,
    required this.rightpadding,
    required this.size,
    required this.textcolor,
    required this.text,
    required this.box,
    required this.property,
    required this.app,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: widget.box),
        Container(
          alignment: widget.property,
          padding: EdgeInsets.only(
              left: widget.leftpadding, right: widget.rightpadding),
          child: Text(
            widget.text,
            style: GoogleFonts.sourceCodePro(
              fontSize: widget.size,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: widget.textcolor,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
              left: widget.leftpadding, right: widget.rightpadding),
          height: widget.height,
          width: widget.width,
          child: TextFormField(
            obscureText: widget.app,
            keyboardType: TextInputType.number,
            controller: widget.fieldcontroller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              filled: widget.yes,
              fillColor: widget.fillcolor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderradius),
                borderSide: BorderSide(color: widget.sidecolor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyTextField1 extends StatefulWidget {
  final double borderradius;
  final bool yes;
  final Color fillcolor;
  final Color sidecolor;
  final double height;
  final double width;
  final TextEditingController fieldcontroller;
  final double leftpadding;
  final double rightpadding;
  final IconData suffixicon;
  final String text;
  final double size;
  final Color textcolor;
  final Alignment property;
  final bool app;
  final double box;
  const MyTextField1({
    super.key,
    required this.borderradius,
    required this.yes,
    required this.fillcolor,
    required this.sidecolor,
    required this.height,
    required this.width,
    required this.fieldcontroller,
    required this.leftpadding,
    required this.rightpadding,
    required this.suffixicon,
    required this.text,
    required this.size,
    required this.textcolor,
    required this.property,
    required this.app,
    required this.box,
  });

  @override
  State<MyTextField1> createState() => _MyTextField1State();
}

class _MyTextField1State extends State<MyTextField1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: widget.box,
        ),
        Container(
          alignment: widget.property,
          padding: EdgeInsets.only(
              left: widget.leftpadding, right: widget.rightpadding),
          child: Text(
            widget.text,
            style: GoogleFonts.sourceCodePro(
                fontSize: widget.size,
                color: widget.textcolor,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
              left: widget.leftpadding, right: widget.rightpadding),
          height: widget.height,
          width: widget.width,
          child: TextFormField(
            style: GoogleFonts.sourceSansPro(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.black),
            obscureText: widget.app,
            controller: widget.fieldcontroller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              suffixIcon: Icon(widget.suffixicon),
              filled: widget.yes,
              fillColor: widget.fillcolor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderradius),
                borderSide: BorderSide(color: widget.sidecolor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
