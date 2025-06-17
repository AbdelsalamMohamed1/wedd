import 'package:flutter/material.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';
import 'package:wedding_0/features/profile/presentation/manager/profile_view_model.dart';

class DataContainer extends StatelessWidget {
  bool hidden;
  String data;

  DataContainer({required this.hidden,required this.data});

  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context).size;
    return Container(
      width: screen.width*(258/383),
      height: screen.height*(43/778),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColors.profile
      ),
      child: Text((hidden)?ProfileViewModel.hide(data):data,style: FontsStyles.regular20White,),
    );
  }
}
