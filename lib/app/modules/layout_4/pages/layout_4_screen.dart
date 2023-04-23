
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_4_controller.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/list_menu_item.dart';
import '../widgets/product_4_card.dart';

class Layout4Screen extends GetView<Layout4Controller> {
  const Layout4Screen({super.key});

  section1(){
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hey Jams 👋', style: TextStyle(fontSize:  30, fontWeight: FontWeight.bold, color: controller.colors[2])),
                  const Text('Find fresh food you want', style: TextStyle(color: Colors.white54),)
                ]
              ),
            ),
            Obx(() =>InkWell(
              onTap: () => Get.toNamed('/layout_4_1'),
              child: Stack(
                children: [
                  Container(
                    margin    : const EdgeInsets.only(right: 20),
                    padding   : const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: controller.colors[1],
                      borderRadius: const BorderRadius.all(Radius.circular(15))
                    ),
                    child     : Icon(Iconsax.shopping_bag, color: controller.colors[2],),
                  ),
                  if(controller.productsInCart.isNotEmpty)
                  Positioned(
                    right: 10.0,
                    child: Container(
                      padding   : const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                      decoration:  BoxDecoration(
                        color: Colors.red.withOpacity(.8),
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                      ),
                      child     :  Text('${controller.quantity}', style: const TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration:  InputDecoration(
              prefixIcon: const Icon(Iconsax.search_status_1, color: Colors.white54,),
              border    : InputBorder.none,
              filled    : true,
              fillColor : controller.colors[1],
              hintStyle: const TextStyle(color: Colors.white54),
              hintText  : 'Search fresh food',
              suffixIcon: Icon(Iconsax.setting_3, color: controller.colors[2]),
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
        )
      ]
    );
  }

  section2(){
    return Container(
      margin: const EdgeInsets.only(top: 15,bottom: 10),
      height: 60,
      child: ListView(
        scrollDirection : Axis.horizontal,
        children        : const [
          ListMenuItem(
            icon: '🍽️',
            name: 'All',
          ),
          ListMenuItem(
            icon: '🍱',
            name: 'Breakfast',
            isSelected: true,
          ),
          ListMenuItem(
            icon: '🍙',
            name: 'Takoyaki',
          ),
          ListMenuItem(
            icon: '🍣',
            name: 'Snack',
          ),
          ListMenuItem(
            icon: '🫓',
            name: 'Arepa',
          )
        ]
      )
    );
  }

  section3(){
    return Expanded(
      child: GridView(
      // controller: controller.scrollController,
      padding     : const EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 50),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 6  / 9),
      children: const [
        Product4Card(
          icon: '🫔',
          name: 'KomoSeYama',
          price: 11,
          id: 0,
        ),
        Product4Card(
          icon: '🍤',
          name: 'Kamalons',
          price: 23,
          id: 1,
        ),
        Product4Card(
          icon: '🍜',
          name: 'Fideo',
          price: 25,
          id: 2,
        ),
        Product4Card(
          icon: '🍚',
          name: 'MuxoAloz',
          price: 22,
          id: 3,
        ),
        Product4Card(
          icon: '🍱',
          name: 'Detodito',
          price: 50,
          id: 4,
        ),
        Product4Card(
          icon: '🥟',
          name: 'Apretaito',
          price: 8,
          id: 5,
        ),
        Product4Card(
          icon: '🧋',
          name: 'Téa',
          price: 10,
          id: 6,
        ),
        Product4Card(
          icon: '☕️',
          name: 'Coffe',
          price: 10,
          id: 7,
        ),
        Product4Card(
          icon: '🧃',
          name: 'Juice',
          price: 10,
          id: 8,
        )
      ]
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: controller.colors[0],
      body: Column(
        children: [
          const SizedBox(height: 50),
          section1(),
          section2(),
          section3()
        ]
      ),
      bottomNavigationBar: const BottonNavigation4(),
    );
  }
  
}