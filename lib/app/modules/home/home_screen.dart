

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  
  tile({String title = '',String category = '', IconData icon = Iconsax.box, String route = '/layout1'}){
    return Column(
      children: [
        ListTile(
          title     : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,     style: const TextStyle(fontWeight: FontWeight.bold),),
              Text(category,  style: const TextStyle(color: Colors.grey)),
            ],
          ),
          leading   : Container(
            padding   : const EdgeInsets.all(10),

            decoration: const BoxDecoration(
              color       : Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child : const Icon(Iconsax.designtools),
          ),
          onTap: () => Get.toNamed(route),
        ),
        const Divider()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
            tile(
              title   : 'Layout 1',
              category: 'Travel'
            ),
            tile(
              title   : 'Layout 2',
              category: 'Travel',
              route   : '/layout_2'
            ),
            tile(
              title   : 'Layout 3',
              category: 'Finance',
              route   : '/layout_3'
            ),
            tile(
              title   : 'Layout 4',
              category: 'Food',
              route   : '/layout_4'
            ),
        ]
      )
    );
  }
}