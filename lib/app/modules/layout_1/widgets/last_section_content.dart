

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../widgets/menu_item/icon_title_widget.dart';

class LastSectionContent extends StatelessWidget {
  const LastSectionContent({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child : Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Text('Popular Categories', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              Container(
                margin: const EdgeInsets.only(right: 25),
                child : const Text('See All', style: TextStyle(fontSize: 11, fontWeight: FontWeight.normal))
              ),

            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              IconTitleWidget(
                title: 'Beach',
                icon  : Icons.beach_access,
                color : Color.fromARGB(136, 233, 30, 98)
              ),
              IconTitleWidget(
                title: 'Hotel',
                icon: Iconsax.building_3,
                color: Color.fromARGB(136, 233, 30, 98)
              ),
              IconTitleWidget(
                title: 'Car',
                icon: Iconsax.car,
                color: Color.fromARGB(136, 233, 30, 98)
              ),
              IconTitleWidget(
                title: 'Food',
                icon: Icons.food_bank_outlined,
                color: Color.fromARGB(136, 233, 30, 98)
              )
            ]
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}