import 'package:flutter/material.dart';
import 'package:wedding_0/core/components/custom_elevated_button.dart';
import 'package:wedding_0/core/components/custom_text_form_field.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';
import 'package:wedding_0/Config/routes_names.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.auth,
      appBar: AppBar(
        title: Text(
          'Login',
          style: FontsStyles.bold32Black,
        ),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical  ,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screen.width * (25 / 383)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screen.height * (57 / 778),
                  ),
                  CustomTextFormField(
                    hintText: 'E-mail / UserName',
                    hintStyle: FontsStyles.regular20Black50,
                    borderColor: AppColors.white,
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  SizedBox(
                    height: screen.height * (45 / 778),
                  ),
                  CustomTextFormField(
                    hintText: 'Password',
                    hintStyle: FontsStyles.regular20Black50,
                    borderColor: AppColors.white,
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  SizedBox(
                    height: screen.height * (9 / 778),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password ?',
                      style: FontsStyles.regular12Black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screen.height * (42 / 778),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screen.width * 12 / 383),
              child: Column(
                children: [
                  CustomElevatedButton(
                    onClick: () {},
                    padding: screen.height * (12 / 778),
                    borderRadius: 500,
                    text: 'Login',
                    textStyle: FontsStyles.medium24White,
                    backgroundColor: AppColors.darkGray,
                    center: true,
                    borderColor: AppColors.darkGray,
                  ),
                  SizedBox(
                    height: screen.height * (25 / 778),
                  ),
                  CustomElevatedButton(
                    onClick: () {},
                    padding: screen.height * (12 / 778),
                    borderRadius: 500,
                    text: 'Login With Google',
                    textStyle: FontsStyles.medium24White,
                    backgroundColor: AppColors.darkGray,
                    center: true,
                    borderColor: AppColors.darkGray,
                  ),
                  SizedBox(
                    height: screen.height * (30 / 778),
                  ),
                  Text(
                    "Don't have an account?",
                    style: FontsStyles.regular12Black,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.registerScreen);
                      },
                    child: Text(
                      'Register',
                      style: FontsStyles.regular12Blue,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
