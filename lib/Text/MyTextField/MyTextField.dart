import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatefulWidget {
  final String text;
  final Color textcolor;
  final double size;
  final double box;
  final double height;
  final double width;
  final bool filled;
  final Color fillcolor;
  final double leftpadding;
  final double rightpadding;
  final TextEditingController fieldcontroller;
  final double borderradius;
  final Color sidecolor;
  final IconData icon;
  const MyTextField(
      {super.key,
      required this.text,
      required this.textcolor,
      required this.size,
      required this.box,
      required this.height,
      required this.width,
      required this.filled,
      required this.fillcolor,
      required this.leftpadding,
      required this.rightpadding,
      required this.fieldcontroller,
      required this.borderradius,
      required this.sidecolor,
      required this.icon});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.box,
        ),
        Container(
          padding: EdgeInsets.only(
              left: widget.leftpadding, right: widget.rightpadding),
          child: Text(
            widget.text,
            style: GoogleFonts.sourceSansPro(
              fontSize: widget.size,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: Color.fromRGBO(65, 39, 15, 0.8),
            ),
          ),
        ),
        Container(
          height: widget.height,
          width: widget.width,
          padding: EdgeInsets.only(
              left: widget.leftpadding, right: widget.rightpadding),
          child: TextField(
            controller: widget.fieldcontroller,
            decoration: InputDecoration(
              suffixIcon: Icon(widget.icon),
              filled: widget.filled,
              fillColor: widget.fillcolor,
              enabledBorder: OutlineInputBorder(
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
