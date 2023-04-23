import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_4_controller.dart';
import '../widgets/add_product_btn.dart';

class Layout42Screen extends GetView<Layout4Controller> {
  const Layout42Screen({super.key});

  bottonNav(){
    return Obx(() =>  Container(
      height: 70,
      margin: const EdgeInsets.all(30),
      child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [

              AddProductBtn(
                product: controller.product,
                action: false,
              ),
              if(controller.isLoarder.value)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width : 30,
                  child : Text(controller.product['quantity'] == null ? '0' : controller.product['quantity'].toString(), style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                )
              else
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width : 30,
                  child : Text(controller.product['quantity'] == null ? '0' : controller.product['quantity'].toString(), style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                ),
              
              AddProductBtn(
                product: controller.product,
                action: true,
              )

            ]
          ),
          InkWell(
            child: Container(
              width: 200,
              padding: const EdgeInsets.symmetric( vertical: 5),
              decoration:  BoxDecoration(
                color:  controller.colors[2],
                borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: const Center(
                child: Text('Add to card',   style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white)))),
          )
        ]
      )
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: controller.colors[0],
      child: Stack(
        children: [
    
          Positioned(
            top: -550,
            left: -100,
            child: Container(
              height: Get.height ,
              width: Get.width * 1.5,
              decoration: BoxDecoration(
                color: controller.colors[1],
                borderRadius: const  BorderRadius.all(Radius.circular(280))
              ),
            ),
          ),
          
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: ListView(
              padding : const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Center(child: Text('${controller.product['icon']}', style: const TextStyle(fontSize: 200))),
                Text(controller.product['name'], style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', style: TextStyle(height: 1.5, color: Colors.white54, fontSize: 17), textAlign: TextAlign.justify,),
                const SizedBox(height: 20),
                const Divider(color: Colors.white30,),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(Iconsax.ticket, color: Colors.white54,), 
                        SizedBox(width: 10),
                        Text('4.8', style: TextStyle(color: Colors.white54),)
                      ]
                    ),
                    const SizedBox(width: 40),
                    Row(
                      children: const [
                        Icon(Iconsax.location, color: Colors.white54,), 
                        SizedBox(width: 10),
                        Text('Jeans token8', style: TextStyle(color: Colors.white54),)
                      ]
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text('Price', style: TextStyle(fontSize: 20, color: Colors.white54),),
                Text('${controller.product['price']}', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)
              ]
            ),
            bottomNavigationBar: bottonNav(),
          ),
        ],
      ),
    );
  }
}