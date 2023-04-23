

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_4_controller.dart';

class TotalOrder4 extends GetView<Layout4Controller> {
  const TotalOrder4({super.key});

  code(){
    return Container(
      padding   : const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: controller.colors[1],
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          SizedBox(
            width: Get.width / 1.6,
            child: TextFormField(
              controller: controller.discountCt,
              decoration:  InputDecoration(
                border    : InputBorder.none,
                filled    : true,
                fillColor : controller.colors[1],
                hintStyle : const TextStyle(color: Colors.white54),
                hintText  : 'Add promo code',
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 3, color: Colors.transparent)
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 3, color: Colors.transparent)
                ),
                errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 3, color: Colors.transparent)
                ),
              )
            ),
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              decoration: const BoxDecoration(
                color:  Color.fromRGBO(87, 65, 43, 1),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Text('Apply', style: TextStyle(color: controller.colors[2]))
            ),
          )
          ]
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: controller.colors[0],
      height  : Get.height / 3,
      padding : const EdgeInsets.all(15),
      child   : Column(
        children: [
          const Divider(color: Colors.white54,),
          const SizedBox(height: 15,),
          code(),
          const SizedBox(height: 15),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',  style: TextStyle(color: controller.colors[2], fontSize: 20)),
                Obx(() => Text('\$ ${controller.total.value}',   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: controller.colors[2]))),
              ]
            ),
          ),
          const SizedBox(height: 15),
          InkWell(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric( vertical: 30),
              decoration:  BoxDecoration(
                color:  controller.colors[2],
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: const Center(
                child: Text('Proceed to checkout',   style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white)))),
          )
          
        ]
      )
    );
  }
}