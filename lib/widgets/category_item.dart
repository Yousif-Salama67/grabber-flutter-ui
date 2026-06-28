import 'package:flutter/material.dart';
import 'package:grabber/models/item_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.category});
  final ItemModel category;
  final backColor = Colors.grey.shade100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: backColor,
              image: DecorationImage(image: AssetImage(category.image)),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              category.name,
              style: TextStyle(
                color: Color(0xff5A5555),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
