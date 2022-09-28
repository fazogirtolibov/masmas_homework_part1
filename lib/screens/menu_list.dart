import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:lesson_two/utils/styles.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _HomePageState();
}

class _HomePageState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(MyImages.image_bg))),
          child: Column(
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find Your\nFavorite Food",
                    style: MyStyles.robotoBold700
                        .copyWith(fontSize: 32, height: 1.2),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: 45,
                    height: 45,
                    child: Image.asset(MyImages.image_notification),
                  )
                ],
              ),
              SizedBox(height: 44),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColors.C_F9A84D.withOpacity(0.09)),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: MyColors.C_F9A84D,
                              ),
                              hintText: "What do you want to order?",
                              hintStyle: TextStyle(color: MyColors.C_F9A84D),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 50,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: MyColors.C_F9A84D.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(MyImages.icon_settings),
                  )
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Menu",
                    style: MyStyles.robotoBold700.copyWith(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      buildMenuItem(mealName1, price1, image1),
                      SizedBox(
                        height: 20,
                      ),
                      buildMenuItem(mealName2, price2, image2),
                      SizedBox(
                        height: 20,
                      ),
                      buildMenuItem(mealName3, price3, image3),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String mealName1 = "Green Noodle";
String mealName2 = "Herbal Pancake";
String mealName3 = "Fruit Salad";
String price1 = "\$7";
String price2 = "\$5";
String price3 = "\$15";
var image1 = MyImages.image_menu1;
var image2 = MyImages.image_menu2;
var image3 = MyImages.image_menu3;

Widget buildMenuItem(mealName, price, image) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 1),
          color: Colors.grey.withOpacity(0.1),
          blurRadius: 10,
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    child: Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Image.asset(
            image,
            width: 64,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 18),
        Column(
          children: [
            Text(mealName),
            SizedBox(height: 4),
            Text(
              "Noodle Home",
              style: MyStyles.robotoRegular400.copyWith(color: Colors.grey),
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                price,
                style: MyStyles.robotoBold700
                    .copyWith(color: MyColors.C_F9A84D, fontSize: 28),
              )
            ],
          ),
        )
      ],
    ),
  );
}
