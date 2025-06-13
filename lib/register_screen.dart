import 'package:flutter/material.dart';
import 'package:wedding_0/core/components/custom_check.dart';
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
      backgroundColor: AppColors.auth,
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 35,
          color: AppColors.black
        ),
        title: Text(
          'Register',
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
                          hintText: 'First Name',
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
                          hintText: 'Last Name',
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
                    hintText: 'UserName',
                    hintStyle: FontsStyles.regular20Black50,
                    borderColor: AppColors.white,
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  SizedBox(
                    height: screen.height * (26 / 778),
                  ),
                  CustomTextFormField(
                    hintText: 'E-Mail',
                    hintStyle: FontsStyles.regular20Black50,
                    borderColor: AppColors.white,
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  SizedBox(
                    height: screen.height * (26 / 778),
                  ),
                  CustomTextFormField(
                    hintText: 'Password',
                    hintStyle: FontsStyles.regular20Black50,
                    borderColor: AppColors.white,
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  SizedBox(
                    height: screen.height * (33 / 778),
                  ),
                  CustomCheck(text: 'Couple', onClick: (){}, space: screen.width,filled: false,),
                  SizedBox(
                    height: screen.height * (33 / 778),
                  ),
                  CustomCheck(text: 'vendor', onClick: (){}, space: screen.width,filled: true,),
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
                    onClick: () {},
                    padding: screen.height * (12 / 778),
                    borderRadius: 500,
                    text: 'Register',
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
                    text: 'Register With Google',
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
