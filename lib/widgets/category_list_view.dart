import 'package:flutter/material.dart';
import 'package:grabber/models/item_model.dart';
import 'package:grabber/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<ItemModel> categories = const [
    ItemModel(image: "assets/images/category/image 36.png", name: "Vegtables"),
    ItemModel(image: "assets/images/category/image 37.png", name: "Beverages"),
    ItemModel(image: "assets/images/category/image 38.png", name: "Fruits"),
    ItemModel(image: "assets/images/category/image 39.png", name: "Milk & Egg"),
    ItemModel(image: "assets/images/category/image 41.png", name: "Laundry"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
      ),
    );
  }
}
