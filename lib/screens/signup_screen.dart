import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:koora_app/components/colors.dart';
import 'package:koora_app/components/global_componnets.dart';
import 'package:koora_app/screens/login_screen.dart';

import 'info_screen.dart';

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
        backgroundColor: Color(0xff20272D),
        body: Stack(
          children: [
//            Container(
//              height: double.infinity,
//              width: double.infinity,
//              child: SvgPicture.asset(
//                'assets/images/background.svg',
//                fit: BoxFit.cover,
//              ),
//            ),

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
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                  "assets/icons/back_arrow.png",
                                  width: 12,
                                )),
                            Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
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
                      myTextField(
                        "تأكيد كلمة المرور",
                        Image.asset("assets/icons/lock.png"),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      myButton(
                        "سجل",
                        () {
                         // To(context, InformationScreen());
                          To(context, LoginScreen());
                        },
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
