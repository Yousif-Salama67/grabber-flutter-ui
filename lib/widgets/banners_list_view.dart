import 'package:flutter/material.dart';
import 'package:grabber/models/banner_model.dart';
import 'package:grabber/widgets/banner_card.dart';

class BannersListView extends StatelessWidget {
  const BannersListView({super.key});
  final List<BannerModel> banners = const [
    BannerModel(image: "assets/images/banners/Slider 1.png"),
    BannerModel(image: "assets/images/banners/Slider 2.png"),
    BannerModel(image: "assets/images/banners/Slider 3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: banners.length,
        itemBuilder: (context, index) {
          return BannerCard(banner: banners[index]);
        },
      ),
    );
  }
}
