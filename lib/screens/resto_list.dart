import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:lesson_two/utils/styles.dart';

class RestoList extends StatefulWidget {
  const RestoList({Key? key}) : super(key: key);

  @override
  State<RestoList> createState() => _HomePageState();
}

class _HomePageState extends State<RestoList> {
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
                    "Popular Restaurant",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNearestRestaurantItem(
                              menuText1, restoImage3, prepareTime1),
                          SizedBox(
                            width: 20,
                          ),
                          buildNearestRestaurantItem(
                              menuText2, restoImage4, prepareTime2),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNearestRestaurantItem(
                              menuText3, restoImage2, prepareTime1),
                          SizedBox(
                            width: 20,
                          ),
                          buildNearestRestaurantItem(
                              menuText4, restoImage1, prepareTime2),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNearestRestaurantItem(
                              menuText4, restoImage5, prepareTime2),
                          SizedBox(
                            width: 20,
                          ),
                          buildNearestRestaurantItem(
                              menuText4, restoImage6, prepareTime2),
                        ],
                      ),
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

  String menuText1 = "Vegan Resto";
  String menuText2 = "Healthy Food";
  String menuText3 = "Good Food";
  String menuText4 = "Smart Food";
  var restoImage1 = MyImages.image_good;
  var restoImage2 = MyImages.image_smart;
  var restoImage3 = MyImages.image_vegan;
  var restoImage4 = MyImages.image_healthy;
  var restoImage5 = MyImages.image_cook1;
  var restoImage6 = MyImages.image_cook2;
  String prepareTime1 = "12 Mins";
  String prepareTime2 = "8 Mins";
  Widget buildNearestRestaurantItem(menuText, restoImage, prepareTime) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 148,
      height: 184,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: 98,
              height: 90,
              child: Padding(
                  padding: EdgeInsets.all(5), child: Image.asset(restoImage))),
          Text(
            menuText,
            style: MyStyles.robotoBold700.copyWith(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(prepareTime,
              style: MyStyles.robotoRegular400
                  .copyWith(color: Colors.grey, fontSize: 13))
        ],
      ),
    );
  }
}
