import 'package:flutter/material.dart';
import 'package:grabber/models/tabs_model.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.tab});
  final TabsModel tab;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,0,15,10),
      child: Column(
        children: [
          Icon(tab.icon,size: 35,),
          SizedBox(height: 5),
          Text(
            tab.name,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
