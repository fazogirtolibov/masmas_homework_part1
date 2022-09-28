import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_two/screens/second_page.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_two/utils/styles.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(MyImages.image_bg2),
              fit: BoxFit.cover,
            )),
            padding: EdgeInsets.all(20).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 203,
                  width: 245,
                  margin: EdgeInsets.only(
                    top: 0,
                    left: 60,
                    right: 60,
                  ).r,
                  child: Image.asset(MyImages.image_logo),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
