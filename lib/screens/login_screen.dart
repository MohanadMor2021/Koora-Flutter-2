import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:koora_app/components/colors.dart';
import 'package:koora_app/components/global_componnets.dart';
import 'package:koora_app/screens/signup_screen.dart';

import 'forgetpassword_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      myTextField(
                        "البريد الاكتروني",
                        Image.asset("assets/icons/email.png"),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      myTextField(
                        "كلمة المرور",
                        Image.asset("assets/icons/lock.png"),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),



                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Spacer(),
                            InkWell(
                              onTap: (){
                                To(context, ForgetPasswordScreen());
                              },
                              child: myArabicText(
                                "هل نسيت كلمة السر ؟",
                                12,
                                FontWeight.normal,
                                Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 15.h,
                      ),


                      myButton(
                        "تسجيل الدخول",
                            () {},
                      ),

                      SizedBox(
                        height: 15.h,
                      ),

                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 15.w),
                        child: myBorderButton(
                          myArabicText(
                            "انشاء حساب",
                            15,
                            FontWeight.bold,
                            Colors.white,
                          ),
                              (){
                                To(context , SignupScreen());
                              },
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: DividerColor,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: myArabicText(
                              "أو",
                              13,
                              FontWeight.normal,
                              DividerColor,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: DividerColor,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            socialMediaSignup(
                                  () {},
                              Image.asset("assets/icons/apple.png"),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            socialMediaSignup(
                                  () {},
                              Image.asset("assets/icons/google.png"),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            socialMediaSignup(
                                  () {},
                              Image.asset("assets/icons/facebook.png"),
                            ),
                          ],
                        ),
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
