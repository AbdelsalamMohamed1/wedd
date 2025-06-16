import 'package:flutter/material.dart';
import 'package:wedding_0/features/assistant_bot_tab/presentation/pages/assistant_bot_tab.dart';
import 'package:wedding_0/features/home_tab/presentation/pages/home_tab.dart';
import 'package:wedding_0/features/wedding_cake_tab/presentation/pages/wedding_cake_tab.dart';
import 'package:wedding_0/features/wedding_halls_tab/presentation/pages/wedding_halls_tab.dart';

class HomeScreenViewModel {
  static List<Widget>tabs=[HomeTab(),WeddingHallsTab(),WeddingCakeTab(),AssistantBotTab()];
  static int index=0;
  static TextEditingController searchTextEditingController=TextEditingController();
  static void onTapClick(int newIndex,){
    index=newIndex;
  }
}