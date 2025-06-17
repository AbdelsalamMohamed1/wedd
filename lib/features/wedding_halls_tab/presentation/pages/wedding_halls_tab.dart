import 'package:flutter/material.dart';
import 'package:wedding_0/core/utils/image_manger.dart';
import 'package:wedding_0/features/wedding_halls_tab/presentation/widgets/wedding_hall_item.dart';

class WeddingHallsTab extends StatelessWidget {
  const WeddingHallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return WeddingHallItem(image: ImageManger.hallTest, hallName: 'miami');
  }
}
