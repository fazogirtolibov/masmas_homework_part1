import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:lesson_two/utils/styles.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(MyImages.image_bg),
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(MyImages.icon_back),
              ),
              const SizedBox(height: 24),
              Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Upload Your Photo\nProfile",
                    style: MyStyles.robotoBold700.copyWith(fontSize: 30),
                  )),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "This data will be displayed in your account\nprofile for security",
                  style: MyStyles.robotoRegular400.copyWith(fontSize: 14),
                ),
              ),
              SizedBox(height: 24),
              Column(
                children: [
                  buildButton(MyImages.image_gallery),
                  Text(
                    "From Gallery",
                    style: MyStyles.robotoBold700.copyWith(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Column(
                children: [
                  buildButton(MyImages.image_camera),
                  Padding(
                    padding: EdgeInsets.only(bottom: 9),
                    child: Text(
                      "Take Photo",
                      style: MyStyles.robotoBold700.copyWith(fontSize: 16),
                    ),
                  )
                ],
              ),
              buildNextButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String imageName) {
    return Container(
      height: 129,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0.4),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(22))),
      child: Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              child: Image.asset(imageName),
            ),
          ],
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
              "Next",
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
