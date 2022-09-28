import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:lesson_two/utils/styles.dart';

class UploadPhotoSecond extends StatelessWidget {
  const UploadPhotoSecond({Key? key}) : super(key: key);

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
          padding: EdgeInsets.all(20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(MyImages.icon_back),
              ),
              SizedBox(height: 24.h),
              Padding(
                  padding: EdgeInsets.only(left: 5).r,
                  child: Text(
                    "Upload Your Photo\nProfile",
                    style: MyStyles.robotoBold700.copyWith(fontSize: 30.sp),
                  )),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "This data will be displayed in your account\nprofile for security",
                  style: MyStyles.robotoRegular400.copyWith(fontSize: 14.sp),
                ),
              ),
              SizedBox(height: 44.h),
              Column(
                children: [
                  buildButton(MyImages.image_photo),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(MyImages.icon_close),
                  ),
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
    return Center(
      child: Container(
        height: 260.h,
        width: 250.w,
        // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
        decoration: const BoxDecoration(
          color: Color(0xFFFEFEFE),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 245.h,
                width: 238.w,
                child: Image.asset(imageName),
              ),
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
            decoration: BoxDecoration(
                color: MyColors.C_53E88B,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.r),
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
