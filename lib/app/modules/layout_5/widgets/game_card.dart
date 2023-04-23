

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_5_controller.dart';

class GameCard extends GetView<Layout5Controller> {
  final String icon;
  final String banner;
  const GameCard({
    super.key,
    this.icon   = 'the_mageseeker.jpeg',
    this.banner = 'garen.jpg'
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width     : Get.width / 1.3,
      margin    : const EdgeInsets.only(left: 20),
      padding   : const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Color.fromARGB(62, 158, 158, 158), 
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        children: [
          Container(
            height: 158,
            decoration:  BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/layout_5/$banner'), fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(Radius.circular(15))
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration:  BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/layout_5/$icon'), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(Radius.circular(15))
                )
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('The Mageseeker', style: TextStyle(fontSize: 17,color: Colors.white, fontWeight: FontWeight.bold)),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 7),
                        Text('9.5', style: TextStyle(fontSize: 15,color: Colors.amber))
                      ]
                    )
                  ]
                ),
              ),
              InkWell(
                child: Container(
                  padding   : const EdgeInsets.all(10),
                  decoration:  BoxDecoration(
                    color: controller.colors[2], 
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: const Icon(Icons.download, color: Colors.white,),
                ),
              )
            ]
          )
        ]
      )
    );
  }
}