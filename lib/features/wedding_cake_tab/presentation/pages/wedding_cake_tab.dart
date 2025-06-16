import 'package:flutter/material.dart';
import 'package:wedding_0/core/utils/image_manger.dart';
import 'package:wedding_0/features/wedding_cake_tab/presentation/widgets/wedding_cake_item.dart';

class WeddingCakeTab extends StatelessWidget {
  const WeddingCakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return WeddingCakeItem(image: ImageManger.hallTest, cakeProviderName: 'Miami');
  }
}
