

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_4_controller.dart';
import 'add_product_btn.dart';

class Product4Card extends GetView<Layout4Controller> {
  final String name;
  final String icon;
  final num price;
  final num id;

  const Product4Card({
    super.key,
    this.icon = '🥑',
    this.name = 'Basico',
    this.price = 0.0,
    required this.id
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.product  = {
          'id'      : id,
          'name'    : name,
          'price'   : price,
          'icon'    : icon
        };
        Get.toNamed('/layout_4_2');
      },
      child: Container( 
        margin    : const EdgeInsets.all(10),
        padding   : const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color       : controller.colors[1],
          borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children          : [
            Text(icon, style: const TextStyle(fontSize: 150),),
            Text(name, style: const TextStyle(color: Colors.white, fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ $price', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                AddProductBtn(
                  product: {
                    'id'      : id,
                    'name'    : name,
                    'price'   : price,
                    'icon'    : icon
                  },
                  action: true,
                )
              ]
            )
          ]
        )
      ),
    );
  }
}