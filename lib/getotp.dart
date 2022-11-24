import 'package:chit_app/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GetOTP extends StatelessWidget {
  const GetOTP({super.key});          

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'Luxury forgot password_2',
    home:Scaffold(
    body: ListView(
      children: [
            SizedBox(height: 40,),
            Row(
              children: [
            Container(
              padding: EdgeInsets.only(left:16,right: 16),
              child: IconButton(
                onPressed: (){
                         Navigator.pop(context);
                },icon: Icon(Icons.arrow_back_ios,size: 15,color: Color.fromRGBO(65, 39, 15, 1)),
                )
            ),
            ),
            SizedBox(width:2,),
            Text('Forgot Password',style: GoogleFonts.sourceSansPro(fontSize: 22,fontWeight: FontWeight.w600,fontStyle:FontStyle.normal,color: Color.fromRGBO(157, 105, 57, 1)),),         ],
                ),
                SizedBox(height: 12,),
                Container(
                  padding: EdgeInsets.only(left: 16,right: 28),
               child: Text('Please enter your mobile number linked to your account.\nWe will send an OTP to resetyour password.',style:GoogleFonts.sourceSansPro(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(65, 39, 15,0.8)),),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.only(left: 16,right: 298),
                child:Text('Enter OTP',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color.fromRGBO(65, 39, 15, 0.8)),),
                ),
                SizedBox(height: 8,),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                         height: 40,
                         width: 40,
                     decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                     ),
                     ),
                      Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
      
          ),
          Container(
            height: 40,
            width: 40,
           decoration: BoxDecoration(
                 color: Color.fromRGBO(255, 255, 255, 1),
                 borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromRGBO(255, 255, 255,1),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromRGBO(255, 255, 255,1),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromRGBO(255, 255, 255,1),
            ),
          ),
              ],
            ),
            SizedBox(height: 40,),
                 Container(
                  padding: EdgeInsets.only(left:16,right: 16),
                  child: MaterialButton(
                    height: 70,
                    color: Color.fromRGBO(213, 186, 143, 1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                   onPressed: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPassword()));
                   }, child: Text('Change Password',style:GoogleFonts.sourceCodePro(fontSize: 16,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal,color: Color.fromRGBO(255, 255, 255, 1)),),
                  ),
                 ),
             ),
             );
}
}