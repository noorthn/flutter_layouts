
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_3_controller.dart';

class CardStyle1 extends GetView<Layout3Controller> {

  const CardStyle1({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.5,
      height: Get.height / 3,
      decoration: BoxDecoration(
        color: controller.colors[1],
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        children: [
          Container(
            padding   : const EdgeInsets.all(15),
            decoration:  BoxDecoration(
              color       : controller.colors[3].withOpacity(.85),
              borderRadius: const BorderRadius.only(
                topLeft : Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: const DecorationImage(image: AssetImage('assets/images/layout_3/layout_3_bg.png'), fit: BoxFit.cover)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Mark Johnson', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Container(
                      padding   : const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration:   BoxDecoration(
                        color       :  Colors.amber.withOpacity(.5),
                        borderRadius:  const BorderRadius.all(Radius.circular(5))
                      ),
                      child: const Icon(Iconsax.money, size: 15),
                    )
                  ]
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('**** 1125', style: TextStyle(fontWeight: FontWeight.bold),), 
                    Text('10/25'), 
                  ]
                ),
                const SizedBox(height: 15),
              ]
            )
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Balance', style: TextStyle(fontSize: 17, color: Colors.white54),),
                const SizedBox(height: 10),
                const Text('\$ 54,575', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40)),
                const SizedBox(height: 10),
                Text('Total week profit +15,32%', style: TextStyle(fontSize: 17, color: controller.colors[3]),),

              ],
            ),
          )
        ]
      )
    );
  }
}