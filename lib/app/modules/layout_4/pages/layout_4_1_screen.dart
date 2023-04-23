
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_4_controller.dart';
import '../widgets/product_4_order_card.dart';
import '../widgets/total_order_4.dart';

class Layout41Screen extends GetView<Layout4Controller> {
  
  const Layout41Screen({super.key});

  section1(){
    return Row(
      children: [
        InkWell(
          onTap: () => Get.back(),
          child: Container(
            padding   : const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color       : controller.colors[1],
              borderRadius: const BorderRadius.all(Radius.circular(15))
            ),
            child: const Icon(Icons.arrow_back_ios, color: Colors.white54,),
          ),
        ),
        const SizedBox(width: 15),
        const Expanded(child: Text('My Bag', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)),
        Obx(() => Text('${controller.quantity} Items', style: const TextStyle(color: Colors.white)))
      ]
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: controller.colors[0],
      appBar: AppBar(
        backgroundColor: controller.colors[0],
        elevation: 0,
        title: const Text('My Bag', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
        actions: [
          Obx(() => Container(
            margin: const EdgeInsets.only(top: 20, right: 25),
            child : Text('${controller.quantity} Items', style: const TextStyle(color: Colors.white))
          ))
        ],
        leadingWidth: 80,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Container(
            margin    : const EdgeInsets.only(left: 20),
            padding   : const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color       : controller.colors[1],
              borderRadius: const BorderRadius.all(Radius.circular(15))
            ),
            child: const Icon(Icons.arrow_back_ios, color: Colors.white54),
          )
        )
      ),
      body: Stack(
        children: [
          Obx(() => ListView(
            padding : const EdgeInsets.only(top: 20, left: 20, right: 20),
            children:  [
              if(controller.productsInCart.isEmpty)
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Icon(Iconsax.box, color: controller.colors[2], size: 70),
                      const SizedBox(height: 15),
                      const Text('Your cart is empty', style: TextStyle(color: Colors.white54, fontSize: 17),)
                    ],
                  ),
                )
              else
                for(var item in controller.productsInCart)
                  Product4OrderCard(product: item,)
            ]
          ))
        ]
      ),
      bottomNavigationBar: const  TotalOrder4(),
    );
  }
  
}