import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grabber/models/tabs_model.dart';
import 'package:grabber/widgets/banners_list_view.dart';
import 'package:grabber/widgets/category_list_view.dart';
import 'package:grabber/widgets/fruit_list_view.dart';
import 'package:grabber/widgets/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: Row(
          children: [
            SvgPicture.asset('assets/images/icons/motor.svg'),
            SizedBox(width: 10),
            Text(
              '61 Hopper street..',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 10),
            Icon(Icons.keyboard_arrow_down, size: 34),
            Spacer(),
            SvgPicture.asset('assets/images/icons/basket.svg'),
          ],
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          BannersListView(),
          SizedBox(height: 20),
          CategoryListView(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                Text(
                  "Fruits",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0CA201),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Stack(
            children: [
              FruitListView(),
              Positioned(
                right: 15,
                left: 15,
                bottom: 1,
                child: Container(
                  // width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff0CA201),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image(
                                      image: AssetImage(
                                        "assets/images/fruits/banana.png",
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                          width: 20,
                          indent: 18,
                          endIndent: 18,
                        ),
                        Text(
                          "View Basket",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Stack(
                          children: [
                            Icon(
                              Icons.shopping_basket_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                            Positioned(
                              right: -3,
                              top: -5,
                              child: Container(
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xff0CA201),width: 3),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                   "3",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 5,
            color: Color(0xffF0EFEF),
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                TabItem(
                  tab: TabsModel(icon: Icons.home_outlined, name: "Home"),
                ),
                Spacer(),
                TabItem(
                  tab: TabsModel(
                    icon: Icons.favorite_border,
                    name: "Favourite",
                  ),
                ),
                Spacer(),
                TabItem(
                  tab: TabsModel(icon: Icons.search, name: "Search"),
                ),
                Spacer(),
                TabItem(
                  tab: TabsModel(icon: Icons.person_outline, name: "Profile"),
                ),
                Spacer(),
                TabItem(
                  tab: TabsModel(icon: Icons.menu, name: "Menu"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
