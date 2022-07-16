import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:koora_app/components/colors.dart';
import 'package:koora_app/components/global_componnets.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/images/background.svg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 30),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),

                   InkWell(
                     onTap: (){
                       Navigator.pop(context);
                     },
                       child: Image.asset("assets/icons/back_arrow.png", width: 15,)),

                    myEnglishText(
                      "KoORa ZoNE",
                      30,
                      FontWeight.bold,
                      Colors.white,
                    ),
                    myTextField(
                      "البريد الاكتروني",
                      Image.asset("assets/icons/email.png"),
                    ),

                    myTextField(
                      "كلمة المرور",
                      Image.asset("assets/icons/lock.png"),
                    ),


                    myTextField(
                      "كلمة المرور",
                      Image.asset("assets/icons/lock.png"),
                    ),

                    myButton(
                      "سجل",
                      (){},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
