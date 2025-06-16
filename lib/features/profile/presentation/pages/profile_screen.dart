import 'package:flutter/material.dart';
import 'package:wedding_0/core/components/custom_app_bar.dart';
import 'package:wedding_0/core/components/custom_elevated_button.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';
import 'package:wedding_0/core/utils/strings_in_app.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            search: false,
            lift: false,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'name',
                      style: FontsStyles.bold25Black,
                    ),
                    CustomElevatedButton(
                      onClick: () {},
                      text: StringsInApp.editInfo,
                      center: true,
                      textStyle: FontsStyles.medium24White,
                      backgroundColor: AppColors.black,
                      borderColor: AppColors.black,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
