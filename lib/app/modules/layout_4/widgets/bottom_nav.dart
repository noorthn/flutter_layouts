

import 'package:flutter/material.dart';
import 'package:flutter_layout/app/modules/layout_4/controllers/layout_4_controller.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottonNavigation4 extends GetView<Layout4Controller> {
  const BottonNavigation4({super.key});
  
  item({IconData icon = Iconsax.activity, bool isSelected = false}){
    return InkWell(
      child: Icon(icon, color: isSelected ? controller.colors[2] : controller.colors[2].withOpacity(.5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: BorderDirectional(top: BorderSide(color: controller.colors[2]))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          item(icon: Iconsax.home5, isSelected: true),
          item(icon: Iconsax.box),
          item(icon: Iconsax.wallet_1),
          item(icon: Iconsax.user4),
        ]
      )
    );
  }
}