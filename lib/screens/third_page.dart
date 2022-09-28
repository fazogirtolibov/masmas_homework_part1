import 'package:flutter/material.dart';
import 'package:lesson_two/screens/login_page.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:lesson_two/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 57).r,
                child: Image.asset(MyImages.image_illustration2),
              ),
              SizedBox(
                height: 60.h,
              ),
              Container(
                child: Text(
                  "Food Ninja is Where Your\nComfort Food Lives",
                  textAlign: TextAlign.center,
                  style: MyStyles.robotoBold700.copyWith(
                    fontSize: 22.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Text(
                  "Enjoy a fast and smooth food delivery at\nyour doorstep",
                  textAlign: TextAlign.center,
                  style: MyStyles.robotoLight200.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 42,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: buildNextButton(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNextButton() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
              child: Container(
            height: 56.h,
            width: 150.w,
            decoration: const BoxDecoration(
                color: MyColors.C_53E88B,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                gradient: LinearGradient(
                  colors: [
                    MyColors.C_53E88B,
                    MyColors.C_15BE77,
                  ],
                )),
            child: Center(
                child: Text(
              "Next",
              style: MyStyles.robotoBold700.copyWith(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            )),
          )),
          SizedBox(
            height: 24.h,
          )
        ],
      ),
    );
  }
}
