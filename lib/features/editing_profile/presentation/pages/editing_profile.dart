import 'package:flutter/material.dart';
import 'package:wedding_0/Config/routes_names.dart';
import 'package:wedding_0/core/components/custom_app_bar.dart';
import 'package:wedding_0/core/components/custom_elevated_button.dart';
import 'package:wedding_0/core/components/custom_text_form_field.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';
import 'package:wedding_0/core/utils/strings_in_app.dart';
import 'package:wedding_0/features/profile/presentation/manager/profile_view_model.dart';

class EditingProfile extends StatelessWidget {
  const EditingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.ofWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              search: false,
              lift: false,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'name',
                        style: FontsStyles.bold25Black,
                      ),
                      CustomElevatedButton(
                        onClick: () {
                          Navigator.pushReplacementNamed(context, RoutesNames.homeScreen);
                        },
                        text: StringsInApp.save,
                        center: true,
                        textStyle: FontsStyles.medium24White,
                        backgroundColor: AppColors.black,
                        borderColor: AppColors.black,
                      )
                    ],
                  ),
                  SizedBox(
                    height: screen.height * (15 / 778),
                  ),
                  Text(
                    StringsInApp.email,
                    style: FontsStyles.bold20Black,
                  ),
                  SizedBox(
                    height: screen.height * (15 / 778),
                  ),
                  CustomTextFormField(
                      hintText: StringsInApp.email,
                      hintStyle: FontsStyles.regular24Black,
                      borderColor: AppColors.profile,

                  ),
                  SizedBox(
                    height: screen.height * (15 / 778),
                  ),
                  Text(
                    StringsInApp.password,
                    style: FontsStyles.bold20Black,
                  ),
                  SizedBox(
                    height: screen.height * (15 / 778),
                  ),
                  CustomTextFormField(
                    hintText: ProfileViewModel.hide(StringsInApp.password),
                    hintStyle: FontsStyles.regular24Black,
                    borderColor: AppColors.profile,
                  ),
                  SizedBox(
                    height: screen.height * (39 / 778),
                  ),
                  SizedBox(
                    width: screen.width * (104 / 383),
                    child: CustomElevatedButton(
                      onClick: () {},
                      text: StringsInApp.tasks,
                      textStyle: FontsStyles.bold20White,
                      backgroundColor: AppColors.black,
                      borderColor: AppColors.black,
                    ),
                  ),
                  SizedBox(
                    width: screen.width * (250 / 383),
                    child: CustomElevatedButton(
                      onClick: () {},
                      text: StringsInApp.invitationAndGuestList,
                      textStyle: FontsStyles.bold20White,
                      backgroundColor: AppColors.black,
                      borderColor: AppColors.black,
                    ),
                  ),
                  SizedBox(
                    width: screen.width * (250 / 383),
                    child: CustomElevatedButton(
                      onClick: () {},
                      center: true,
                      text: StringsInApp.bankingOptions,
                      textStyle: FontsStyles.bold20White,
                      backgroundColor: AppColors.black,
                      borderColor: AppColors.black,
                    ),
                  ),
                  SizedBox(
                    height: screen.height * (50 / 778),
                  ),
                  Center(
                    child: SizedBox(
                      width: screen.width * (110 / 383),
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
