import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:koora_app/components/colors.dart';
import 'package:koora_app/components/global_componnets.dart';

class InformationScreen extends StatefulWidget {
  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xff20272D),
        body: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.34,
                left: 15.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myArabicText(
                    "معلوماتك",
                    20,
                    FontWeight.bold,
                    Colors.white,
                  ),
                  InkWell(
                    onTap: () {},
                    child: myArabicText(
                      "تخطي",
                      16,
                      FontWeight.normal,
                      textColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: 100.0.w,
              height: 120.0.h,
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/icons/camera.png"),
            ),
            SizedBox(
              height: 50,
            ),
            infoTextField("الاسم الاول"),
            SizedBox(
              height: 20,
            ),
            infoTextField("الاسم الاخير"),
            SizedBox(
              height: 20,
            ),
            infoTextField("نبذة"),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 10,
              ),
              child: Row(
                children: [
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: textColor),
                      ),
                      child: myArabicText(
                        "التالي",
                        12,
                        FontWeight.normal,
                        textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: myEnglishText(
                "AWK-software",
                20,
                FontWeight.bold,
                textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
