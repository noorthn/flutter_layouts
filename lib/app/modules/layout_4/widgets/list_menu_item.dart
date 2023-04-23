
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_4_controller.dart';

class ListMenuItem extends GetView<Layout4Controller> {

  final String icon;
  final String  name;
  final bool  isSelected;

  const ListMenuItem({
    super.key,
    required this.icon,
    required this.name,
    this.isSelected = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      padding   : const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color       : isSelected ?  const Color.fromRGBO(87, 65, 43, 1) : controller.colors[1] ,
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child       : Row(
        children: [
          Text(icon,  style: const TextStyle(fontSize: 25)),
          const SizedBox(width: 15),
          Text(name,  style:  TextStyle(fontWeight: FontWeight.bold, color: controller.colors[2]))
        ]
      )
    );
  }
}