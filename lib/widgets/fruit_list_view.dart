import 'package:flutter/material.dart';
import 'package:grabber/models/item_model.dart';
import 'package:grabber/widgets/fruit_item.dart';

class FruitListView extends StatelessWidget {
  const FruitListView({super.key});
  final List<ItemModel> fruits = const [
    ItemModel(
      image: "assets/images/fruits/banana.png",
      name: "Banana",
      rate: "4.8",
      price: "\$ 3.99",
    ),
    ItemModel(
      image: "assets/images/fruits/flfl.png",
      name: "Papper",
      rate: "4.8",
      price: "\$ 2.99",
    ),
    ItemModel(
      image: "assets/images/fruits/orang.png",
      name: "Orange",
      rate: "4.8",
      price: "\$ 3.99",
    ),
    ItemModel(
      image: "assets/images/fruits/lemon.png",
      name: "Banana",
      rate: "4.8",
      price: "\$ 2.99",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return FruitItem(fruit: fruits[index]);
        },
      ),
    );
  }
}
