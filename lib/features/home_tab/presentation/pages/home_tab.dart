import 'package:flutter/material.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';
import 'package:wedding_0/core/utils/strings_in_app.dart';

class HomeTab extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Container(
      color: AppColors.ofWhite,
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            SizedBox(
                height: screen.height*(80/778),
                child: Center(
                    child: Text(
                      StringsInApp.appIntroduction,
                      style: FontsStyles.regular16Black,
                    ))),
            Row(
              children: [SizedBox(width: screen.width*(10/383),),Text(StringsInApp.reservations)],
            ),

          ],
        ),
      ),
    );
  }
}
