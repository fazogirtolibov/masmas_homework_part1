import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_two/screens/menu_list.dart';
import 'package:lesson_two/screens/resto_list.dart';
import 'package:lesson_two/utils/colors.dart';
import 'package:lesson_two/utils/images.dart';
import 'package:lesson_two/utils/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(MyImages.image_bg))),
          child: SingleChildScrollView(
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
                buildBanner(),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Nearest Restaurant",
                      style: MyStyles.robotoBold700,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory,
                        ),
                        clipBehavior: Clip.none,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RestoList()));
                        },
                        child: Text(
                          "View More",
                          style: MyStyles.robotoRegular400
                              .copyWith(color: MyColors.C_F9A84D),
                        )),
                  ],
                ),
                Container(
                  height: 184,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildNearestRestaurantItem(
                            menuText1, restoImage3, prepareTime1),
                        buildNearestRestaurantItem(
                            menuText2, restoImage4, prepareTime2),
                        buildNearestRestaurantItem(
                            menuText3, restoImage2, prepareTime1),
                        buildNearestRestaurantItem(
                            menuText4, restoImage1, prepareTime2),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Menu",
                      style: MyStyles.robotoBold700,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          splashFactory: NoSplash.splashFactory,
                        ),
                        clipBehavior: Clip.none,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuList()));
                        },
                        child: Text(
                          "View More",
                          style: MyStyles.robotoRegular400
                              .copyWith(color: MyColors.C_F9A84D),
                        )),
                  ],
                ),
                Container(
                  height: 184,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [buildMenuItem()],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBanner() {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MyImages.image_pattern),
          ),
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [MyColors.C_53E88B, MyColors.C_15BE77])),
      child: Stack(
        children: [
          Image.asset(MyImages.image_ice_cream),
          Positioned(
              right: 20,
              top: 30,
              child: Text(
                "Special Deal For\nOctober",
                style: MyStyles.robotoBold700
                    .copyWith(color: Colors.white, fontSize: 18),
              )),
          Positioned(
              bottom: 20,
              right: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style:
                      MyStyles.robotoBold700.copyWith(color: MyColors.C_53E88B),
                ),
              ))
        ],
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
  String prepareTime1 = "12 Mins";
  String prepareTime2 = "8 Mins";
  Widget buildNearestRestaurantItem(menuText, restoImage, prepareTime) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 148,
      height: 150,
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
            style: MyStyles.robotoBold700,
          ),
          SizedBox(height: 8),
          Text(prepareTime,
              style: MyStyles.robotoRegular400.copyWith(color: Colors.grey))
        ],
      ),
    );
  }
}

Widget buildMenuItem() {
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
            MyImages.image_menu1,
            width: 64,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 18),
        Column(
          children: [
            Text("Green Noddle"),
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
                "\$5",
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
