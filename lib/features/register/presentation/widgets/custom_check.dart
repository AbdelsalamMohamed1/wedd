import 'package:flutter/material.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';

class CustomCheck extends StatelessWidget {
  String text;
  Function onClick;
  double space;
  bool filled;

  CustomCheck(
      {required this.text,
      required this.onClick,
      required this.space,
      required this.filled});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: FontsStyles.regular24Black,
        ),
        SizedBox(
          width: space * (47 / 383),
        ),
        GestureDetector(
          onTap: () {
            onClick;
          },
          child: (filled)
              ? Container(
                  width: space * (44 / 383),
                  height: space * (44 / 383),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColors.black, width: 5),
                      color: AppColors.ofWhite),
                )
              : Container(
                  width: space * (44 / 383),
                  height: space * (44 / 383),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.black, width: 5),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
        )
      ],
    );
  }
}
