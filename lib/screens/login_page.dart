import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_two/screens/second_page.dart';
import 'package:lesson_two/screens/sign_in.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_two/utils/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                height: 203,
                width: 245,
                margin: EdgeInsets.only(
                  top: 47,
                  left: 60,
                  right: 60,
                ).r,
                child: Image.asset(MyImages.image_logo),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                child: Text(
                  'Login To Your Account',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 325,
                height: 57,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Username Here", labelText: "Username"),
                ),
              ),
              Container(
                width: 325,
                height: 57,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password Here", labelText: "Password"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Or Continue With",
                style: MyStyles.robotoBold700.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    onTap: () {},
                    child: Container(
                      width: 152,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white70,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.3),
                            blurRadius: 30,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Facebook",
                          style: MyStyles.robotoMedium500.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    onTap: () {},
                    child: Container(
                      width: 152,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white70,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.3),
                            blurRadius: 30,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Google",
                          style: MyStyles.robotoMedium500.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Forgot Your Password?",
                style: MyStyles.robotoBold700
                    .copyWith(fontSize: 12, color: MyColors.C_15BE77),
              ),
              SizedBox(
                height: 36,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: buildLoginButton(),
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
              "Login",
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
