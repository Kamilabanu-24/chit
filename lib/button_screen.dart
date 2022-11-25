import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final double height;
  final double width;
  final double leftpadding;
  final double rightpadding;
  final String text;
  final double borderRadius;
  final VoidCallback click;
  final Color textcolor;
  final double size;
  final Color backgroundcolor;
  MyButton({
    super.key,
    required this.height,
    required this.width,
    required this.leftpadding,
    required this.rightpadding,
    required this.text,
    required this.borderRadius,
    required this.click,
    required this.textcolor,
    required this.size,
    required this.backgroundcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(left: leftpadding, right: rightpadding),
      child: MaterialButton(
        color: backgroundcolor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        onPressed: click,
        child: Text(
          text,
          style: GoogleFonts.sourceSerifPro(
            fontSize: size,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
