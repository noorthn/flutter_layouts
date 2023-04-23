
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_3_controller.dart';

class BottomNavWidget extends GetView<Layout3Controller>  {
  final bool color;
  const BottomNavWidget({
    super.key,
    this.color = false
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin  : const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        padding : const EdgeInsets.all(15),
        height  : 80,
        decoration:  BoxDecoration(
          color: !color ?  controller.colors[1] :  controller.colors[0],
          borderRadius: const BorderRadius.all(Radius.circular(40))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
            InkWell(
              onTap: () => Get.toNamed('/layout_3'),
              child: const Icon(Iconsax.home, color: Colors.white)
            ),
            InkWell(
              onTap: () => Get.toNamed('/layout_3_1'),
              child: const Icon(Iconsax.chart, color: Colors.white)
            ),
            const Icon(Iconsax.chart_1, color: Colors.white),
            const Icon(Iconsax.chart_2, color: Colors.white),
          ]
        )
      ),
    );
  }
}