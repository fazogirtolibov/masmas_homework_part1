import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lesson_two/screens/conrats.dart';
import 'package:lesson_two/screens/first_page.dart';
import 'package:lesson_two/screens/home_page.dart';
import 'package:lesson_two/screens/payment_method_page.dart';
import 'package:lesson_two/screens/set_location.dart';
import 'package:lesson_two/screens/test.dart';
import 'package:lesson_two/screens/upload_photo.dart';
import 'package:lesson_two/screens/upload_photo_2.dart';

void main() {
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Bu title edi',
            themeMode: ThemeMode.light,
            darkTheme: ThemeData(
              primarySwatch: Colors.yellow,
            ),
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: child);
      },
      child: HomePage(),
      // child: FirstPage(),
      // child: TestPage(),
    );
  }
}
