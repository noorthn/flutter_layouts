
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_5_controller.dart';

class BannerLayout5 extends GetView<Layout5Controller> {
  final String banner;
  const BannerLayout5({
    super.key,
    required this.banner
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width : Get.width / 1.2,
      margin: const EdgeInsets.only(left: 20),
      decoration:  BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/layout_5/$banner'), fit: BoxFit.cover),
        borderRadius: const BorderRadius.all(Radius.circular(15))
      )
    );
  }
}