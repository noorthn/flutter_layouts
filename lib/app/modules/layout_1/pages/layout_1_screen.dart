

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_1_controller.dart';
import '../widgets/carousel_menu.dart';
import '../widgets/last_section_content.dart';
import '../widgets/post_card.dart';

class Layout1Screen extends GetView<Layout1Controller> {
  const Layout1Screen({super.key});

  post(){
    return SizedBox(
        width : Get.width / 1.5,
        height: Get.height / 2.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
            PostCard1(
              status  : true,
              title   :' Plitvice Lakes',
              location: 'National Parck, Croatia',
            ),
            PostCard1(
              title   :'Lugar muy lindo',
              location: 'En alguna parte del mundo',
              image: 'layout_1_post_2',
            ),
            PostCard1(
              title   :'Aqui o allá',
              location: 'Ya ni se que poner',
              image: 'layout_1_post_3',
            ),
        ],
      ),
    );
  }

  lastSection(){
    return Column(
      children: [

        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            alignment: Alignment.centerLeft,
            width: 100,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Container(
              decoration: const BoxDecoration(
                color:  Color.fromARGB(255, 252, 244, 248),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200))
              )
            )
          )
        ),
        
        Container(
          width     : double.infinity,
          decoration: const BoxDecoration(
              color       :  Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(100))
           ),
           child: const LastSectionContent(),
        )
        
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 244, 248),
      drawer: const Drawer(),
      appBar: PreferredSize(
        preferredSize : const  Size(double.infinity, kToolbarHeight), 
        child         : AppBar(
          elevation      : 0,
          backgroundColor: Colors.transparent,
          actions        :  [
            Container(
              margin  : const EdgeInsets.symmetric(horizontal: 20),
              child : const Icon(Iconsax.search_normal, color: Colors.black45)
            )
          ],
          leading: Builder(
            builder: (context) => const Icon(Iconsax.category, color: Colors.black,),
          ),
        )
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child : const Text('Discover', style: TextStyle(fontSize: 40,))
          ),
          const CarouselMenu1(),
          post(),
          lastSection()
          
        ]
      )
    );
  }
}