import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_two/screens/second_page.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_two/utils/styles.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(MyImages.image_bg2),
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.all(20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: 203.h,
                // width: 245.w,
                margin: EdgeInsets.only(
                  top: 0,
                  left: 60,
                  right: 60,
                ).r,
                child: Image.asset(MyImages.image_logo),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                child: Text(
                  'Sign Up For Free ',
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 325.w,
                height: 57.h,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Username Here", labelText: "Anamwp"),
                ),
              ),
              Container(
                width: 325.w,
                height: 57.h,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password Here", labelText: "Email"),
                ),
              ),
              Container(
                width: 325.w,
                height: 57.h,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password Here", labelText: "Password"),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                MyColors.C_53E88B,
                                MyColors.C_15BE77,
                              ],
                            )),
                        child: Image.asset(MyImages.image_vector),
                        width: 22.w,
                        height: 22.h,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Keep Me Signed In",
                        style: MyStyles.robotoLight200.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                MyColors.C_53E88B,
                                MyColors.C_15BE77,
                              ],
                            )),
                        child: Image.asset(MyImages.image_vector),
                        width: 22.w,
                        height: 22.h,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Email Me About Special Pricing",
                        style:
                            MyStyles.robotoLight200.copyWith(fontSize: 12.sp),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: buildLoginButton(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "already have an account?",
                style: MyStyles.robotoMedium500
                    .copyWith(fontSize: 12.sp, color: MyColors.C_15BE77),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
              "Create Account",
              style: MyStyles.robotoBold700.copyWith(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            )),
          )),
        ],
      ),
    );
  }
}
