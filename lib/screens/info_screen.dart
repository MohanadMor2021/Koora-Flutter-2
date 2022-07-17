import 'package:flutter/material.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.34,
                  left: 15,
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
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                width: 130.0,
                height: 130.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.white),
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/icons/camera.png"),
              ),

              SizedBox(
                height: 70,
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
                padding:  EdgeInsets.only(
                    left: 20 ,
                    top: 10,
                  bottom: MediaQuery.of(context).size.height * 0.23,
                ),
                child: Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: (){},
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

              myEnglishText(
                "AWK-software",
                20,
                FontWeight.bold,
                textColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
