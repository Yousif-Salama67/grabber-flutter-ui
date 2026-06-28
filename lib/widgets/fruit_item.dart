import 'package:flutter/material.dart';
import 'package:grabber/models/item_model.dart';

// ignore: must_be_immutable
class FruitItem extends StatelessWidget {
  FruitItem({super.key, required this.fruit});
  final ItemModel fruit;
  Color backColor = Colors.grey.shade100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: backColor,
              image: DecorationImage(image: AssetImage(fruit.image)),
            ),
          ),
          // SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(top: 165),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fruit.name,
                  style: TextStyle(
                    color: Color(0xff5A5555),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffFFD500), size: 20),
                    SizedBox(width: 8),
                    Text(
                      "${fruit.rate!} (287)",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  fruit.price!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 100,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, size: 25, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
