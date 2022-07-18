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
                              onTap: () {},
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
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: myBorderButton(
                          myArabicText(
                            "إعادة تعيين",
                            14,
                            FontWeight.bold,
                            Colors.white,
                          ),
                          () {
                            To(context, SignupScreen());
                          },
                        ),
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
