import 'package:flutter/material.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';
import 'package:wedding_0/core/utils/image_manger.dart';

class WeddingHallItem extends StatelessWidget {
  String hallName;
  String image;

  WeddingHallItem({required this.image, required this.hallName});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.black),
            color: AppColors.white
        ),
        width: screen.width * (224 / 383),
        height: screen.height * (205 / 778),
        child: Column(
          children: [
            SizedBox(
              width: screen.width * (224 / 383),
              height: screen.height * (150 / 778),
              child: Image.asset(image),
            ),
            SizedBox(
              height: screen.height * (20 / 778),
            ),
            Container(
              color: AppColors.auth,
              width: screen.width * (190 / 338),
              height: screen.height * (23 / 778),
              child: Text(
                hallName,
                style: FontsStyles.regular20White,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
