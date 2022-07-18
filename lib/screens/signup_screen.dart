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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: (EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.1,
                  bottom: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.1,
                )),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: LayoutBuilder(
                  builder: (ctx, constraint) => Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: constraint.maxHeight * 0.03,
                                  child: Image.asset(
                                    "assets/icons/back_arrow.png",
                                    width: 12,
                                  ),
                                )),
                            Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: constraint.maxHeight * 0.05,
                        child: myEnglishText(
                          "KoORa ZoNE",
                          25,
                          FontWeight.bold,
                          Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        height: constraint.maxHeight * 0.1,
                        child: myTextField(
                          "البريد الاكتروني",
                          Image.asset("assets/icons/email.png"),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: constraint.maxHeight * 0.1,
                        child: myTextField(
                          "كلمة المرور",
                          Image.asset("assets/icons/lock.png"),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: constraint.maxHeight * 0.1,
                        child: myTextField(
                          "تأكيد كلمة المرور",
                          Image.asset("assets/icons/lock.png"),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40.h,
                            child: socialMediaSignup(
                              () {},
                              Image.asset("assets/icons/apple.png"),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            height: 40.h,
                            child: socialMediaSignup(
                              () {},
                              Image.asset("assets/icons/google.png"),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            height: 40.h,
                            child: socialMediaSignup(
                              () {},
                              Image.asset("assets/icons/facebook.png"),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: myEnglishText(
                          "AWK-software",
                          18,
                          FontWeight.bold,
                          textColor,
                        ),
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
