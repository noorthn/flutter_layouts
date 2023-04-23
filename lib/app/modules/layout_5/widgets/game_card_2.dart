

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_5_controller.dart';

class GameCard2 extends GetView<Layout5Controller> {
  final String logo;
  final String name;
  final String category;
  final String createBy;
  const GameCard2({
    super.key,
    this.logo     = 'fornite_logo.png',
    this.name     = 'Fornite',
    this.category = 'shooter',
    this.createBy = 'Epic games',
  });

  image(){
    return Container(
      height: 50,
      width: 50,
      decoration:  BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/layout_5/$logo'))
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              image(),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 17,color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(createBy, style: const TextStyle(color: Colors.white54),),
                  Row(
                    children: [
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.amber, size: 14,),
                            SizedBox(width: 7),
                            Text('9.5', style: TextStyle(fontSize: 12,color: Colors.amber))
                          ]
                        ),
                        const SizedBox(width: 15),
                        Row(
                          children:  [
                            Icon(Icons.download, color: controller.colors[2], size: 14,),
                            const SizedBox(width: 7),
                            const Text('100. k', style: TextStyle(fontSize: 12 ,color:Colors.white54))
                          ]
                        ),
                        const SizedBox(width: 15),
                        Row(
                          children:  [
                            const Icon(Iconsax.category, color: Colors.amber, size: 14,),
                            const SizedBox(width: 7),
                            Text(category , style: const TextStyle(fontSize: 12,color: Colors.amber))
                          ]
                        ),
                    ]
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.white24,)
        ],
      ),
    );
  }
}