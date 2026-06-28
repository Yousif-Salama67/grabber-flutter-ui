import 'package:flutter/material.dart';
import 'package:grabber/models/banner_model.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key, required this.banner});
  final BannerModel banner;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,0,10,0),
      child: Container(
        width: 350,
        // height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(banner.image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
