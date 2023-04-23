

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controllers/layout_4_controller.dart';

class AddProductBtn extends GetView<Layout4Controller> {
  final Map product;
  final bool action;
  const AddProductBtn({
    super.key,
    required this.product,
    this.action = true
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){controller.addProduct(product, action);},
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color       : action ? const Color.fromRGBO(87, 65, 43, 1) : const Color.fromRGBO(87, 65, 43, .2),
          border      : Border.all(color: action ? controller.colors[2] : controller.colors[2].withOpacity(.5)),
          borderRadius: const BorderRadius.all(Radius.circular(50))
        ),
        child:  Icon(
            !action
              ?  Icons.remove 
              : Icons.add_rounded, 
              size: 15, 
              color: !action 
              ? controller.colors[2].withOpacity(.5) 
              : controller.colors[2]),
      ),
    );
  }
}