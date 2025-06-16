import 'package:flutter/material.dart';
import 'package:wedding_0/core/components/custom_app_bar.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/image_manger.dart';
import 'package:wedding_0/core/utils/strings_in_app.dart';
import 'package:wedding_0/features/home/presentation/manager/home_screen_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.ofWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screen.height * (20 / 778),
            ),
            CustomAppBar(
                search: HomeScreenViewModel.index==0,
                lift: true,
                textEditingController:
                    HomeScreenViewModel.searchTextEditingController),
            HomeScreenViewModel.tabs[HomeScreenViewModel.index]
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(ImageManger.homeIcon),
              label: StringsInApp.home),
          BottomNavigationBarItem(
              icon: Image.asset(ImageManger.weddingHallsIcon),
              label: StringsInApp.weddingHalls),
          BottomNavigationBarItem(
              icon: Image.asset(ImageManger.weddingCakeIcon),
              label: StringsInApp.weddingCake),
          BottomNavigationBarItem(
              icon: Image.asset(ImageManger.chatbot), label: ''),
        ],
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.black,
        showUnselectedLabels: false,
        onTap: (int i) {
          setState(() {
            HomeScreenViewModel.onTapClick(i);
          });
        },
        currentIndex: HomeScreenViewModel.index,
      ),
    );
  }
}
