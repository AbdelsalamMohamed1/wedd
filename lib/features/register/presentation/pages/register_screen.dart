import 'package:flutter/material.dart';
import 'package:wedding_0/Config/routes_names.dart';
import 'package:wedding_0/core/utils/strings_in_app.dart';
import 'package:wedding_0/features/register/presentation/widgets/custom_check.dart';
import 'package:wedding_0/core/components/custom_elevated_button.dart';
import 'package:wedding_0/core/components/custom_text_form_field.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.ofWhite,
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 35,
          color: AppColors.black
        ),
        title: Text(
          StringsInApp.register,
          style: FontsStyles.bold32Black,
        ),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screen.width * (29 / 383)),
              child: Column(
                children: [
                  SizedBox(
                    height: screen.height * (25 / 778),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          hintText: StringsInApp.firstName,
                          hintStyle: FontsStyles.regular20Black50,
                          borderColor: AppColors.white,
                          filled: true,
                          fillColor: AppColors.white,
                        ),
                      ),
                      SizedBox(
                        width: screen.width * (26 / 383),
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          hintText: StringsInApp.lastName,
                          hintStyle: FontsStyles.regular20Black50,
                          borderColor: AppColors.white,
                          filled: true,
                          fillColor: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screen.height * (26 / 778),
                  ),
                  CustomTextFormField(
                    hintText: StringsInApp.username,
                    hintStyle: FontsStyles.regular20Black50,
                    borderColor: AppColors.white,
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  SizedBox(
                    height: screen.height * (26 / 778),
                  ),
                  CustomTextFormField(
                    hintText: StringsInApp.email,
                    hintStyle: FontsStyles.regular20Black50,
                    borderColor: AppColors.white,
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  SizedBox(
                    height: screen.height * (26 / 778),
                  ),
                  CustomTextFormField(
                    hintText: StringsInApp.password,
                    hintStyle: FontsStyles.regular20Black50,
                    borderColor: AppColors.white,
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  SizedBox(
                    height: screen.height * (33 / 778),
                  ),
                  CustomCheck(text: StringsInApp.couple, onClick: (){}, space: screen.width,filled: false,),
                  SizedBox(
                    height: screen.height * (33 / 778),
                  ),
                  CustomCheck(text: StringsInApp.vendor, onClick: (){}, space: screen.width,filled: true,),
                  SizedBox(
                    height: screen.height * (33 / 778),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screen.width * 12 / 383),
              child: Column(
                children: [
                  CustomElevatedButton(
                    onClick: () {
                      Navigator.pushReplacementNamed(context,RoutesNames.homeScreen);
                    },
                    padding: screen.height * (12 / 778),
                    borderRadius: 500,
                    text: StringsInApp.register,
                    textStyle: FontsStyles.medium24White,
                    backgroundColor: AppColors.darkGray,
                    center: true,
                    borderColor: AppColors.darkGray,
                  ),
                  SizedBox(
                    height: screen.height * (25 / 778),
                  ),
                  CustomElevatedButton(
                    onClick: () {
                      Navigator.pushReplacementNamed(context, RoutesNames.homeScreen);
                    },
                    padding: screen.height * (12 / 778),
                    borderRadius: 500,
                    text: StringsInApp.registerWithGoogle,
                    textStyle: FontsStyles.medium24White,
                    backgroundColor: AppColors.darkGray,
                    center: true,
                    borderColor: AppColors.darkGray,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
