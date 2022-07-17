import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:koora_app/components/colors.dart';
import 'package:koora_app/components/global_componnets.dart';
import 'package:koora_app/screens/signup_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xff20272D),
        body: Stack(
          children: [

            Container(
              height: 200.h,
              decoration: const BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20)
                  .add(EdgeInsets.only(top: 90, bottom: 0)),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      SizedBox(
                        height: 50.h,
                      ),
                      myEnglishText(
                        "KoORa ZoNE",
                        25,
                        FontWeight.bold,
                        Colors.white,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          children: [

                            InkWell(
                              onTap: (){},
                              child: myArabicText(
                                "إعادة تعيين كلمة السر",
                                12,
                                FontWeight.normal,
                                Colors.white,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 15.h,
                      ),


                      myTextField(
                        "البريد الاكتروني",
                        Image.asset("assets/icons/email.png"),
                      ),

                      SizedBox(
                        height: 15.h,
                      ),

                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 15.w),
                        child: myBorderButton(
                          myArabicText(
                            "إعادة تعيين",
                            14,
                            FontWeight.bold,
                            Colors.white,
                          ),
                              (){
                            To(context , SignupScreen());
                          },
                        ),
                      ),
                      SizedBox(
                        height:( MediaQuery.of(context).size.height * 0.85) * 0.47 ,
                      ),




                      myEnglishText(
                        "AWK-software",
                        18,
                        FontWeight.bold,
                        textColor,
                      ),
                    ],
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
