import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_4_controller.dart';
import 'add_product_btn.dart';

class Product4OrderCard extends GetView<Layout4Controller> {
  final Map product;
  const Product4OrderCard({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin    : const EdgeInsets.only(bottom: 15),
      padding   : const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color     : controller.colors[1],
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${product['icon']}', style: const TextStyle(fontSize: 45),),
          const SizedBox(width: 50),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product['name'], style: const TextStyle(color: Colors.white),),
                const SizedBox(height: 10),
                Row(
                  children: [
                    AddProductBtn(
                      product: product,
                      action: false,
                    ),
                    
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: 30,
                      child: Text(product['quantity'].toString(), style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                    ),
                    
                    AddProductBtn(
                      product: product,
                      action: true,
                    )
                  ]
                )
              ]
            ),
          ),
          Text('\$ ${product['price'] * product['quantity']}', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: controller.colors[2]),)
        ],
      ),
    );
  }
}