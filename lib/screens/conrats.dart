import 'package:flutter/material.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:lesson_two/utils/styles.dart';

class Congrats extends StatelessWidget {
  const Congrats({Key? key}) : super(key: key);

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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 227, left: 102, right: 101),
                child: Image.asset(MyImages.image_success),
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                child: Text(
                  "Congrats!",
                  style: MyStyles.robotoBold700.copyWith(
                    color: MyColors.C_53E88B,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Text(
                  "Your Profile Is Ready To Use",
                  style: MyStyles.robotoBold700.copyWith(
                    fontSize: 23,
                  ),
                ),
              ),
              buildNextButton()
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
            height: 56,
            width: 150,
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
              "Try Order",
              style: MyStyles.robotoBold700.copyWith(
                color: Colors.white,
                fontSize: 16,
              ),
            )),
          )),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
