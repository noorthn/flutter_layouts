
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_3_controller.dart';

class CardStyle2 extends GetView<Layout3Controller> {

  final IconData icon;
  final Color color;
  final Color colorIcon;
  final bool showBorder;

  const CardStyle2({
    super.key,
    this.icon         = Iconsax.box,
    this.color        = Colors.transparent,
    this.colorIcon    = Colors.white,
    this.showBorder   = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width     : Get.width / 5,
      height    : Get.height / 12,
      decoration: BoxDecoration(
        color       : color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border      :showBorder ?  Border.all( color: Colors.white12) : null
      ),
      child: Icon(icon, color:colorIcon),
    );
  }
}