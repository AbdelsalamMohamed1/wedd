import 'package:flutter/material.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';
import 'package:wedding_0/core/utils/image_manger.dart';

class WeddingCakeItem extends StatelessWidget {
  String cakeProviderName;
  String image;

  WeddingCakeItem({required this.image, required this.cakeProviderName});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              child: Image.asset(image),
            ),
            SizedBox(
              height: screen.height * (20 / 778),
            ),
            Container(
              color: AppColors.auth,
              child: Text(
                cakeProviderName,
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
