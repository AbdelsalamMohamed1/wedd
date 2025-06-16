import 'package:flutter/material.dart';
import 'package:wedding_0/Config/routes_names.dart';
import 'package:wedding_0/core/utils/image_manger.dart';
import 'package:wedding_0/core/utils/strings_in_app.dart';

class CustomAppBar extends StatelessWidget {
  bool search;
  bool lift = true;
  TextEditingController? textEditingController;

  CustomAppBar(
      {super.key,
      required this.search,
      required this.lift,
      this.textEditingController});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return (lift)
        ? Row(
            children: [
              Image.asset(ImageManger.appLogo),
              (search)
                  ? SizedBox(
                      width: screen.width * (177 / 383),
                      height: screen.height * (34 / 778),
                      child: SearchBar(
                        leading: Image.asset(ImageManger.searchIcon),
                        controller: textEditingController,
                        hintText: StringsInApp.search,
                      ),
                    )
                  : SizedBox(
                      width: screen.width * (213 / 383),
                    ),
              SizedBox(
                width: screen.width * (24 / 383),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, RoutesNames.profileScreen);
                  },
                  child: Image.asset(
                    ImageManger.userIcon,
                    width: screen.width * (30 / 383),
                    height: screen.height * (100 / 778),
                  ))
            ],
          )
        : Row(
      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageManger.userIcon,
                width: screen.width * (75 / 383),
                height: screen.height * (75 / 778),
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: screen.width * (150 / 383),
              ),
              Image.asset(ImageManger.appLogo),
            ],
          );
  }
}
