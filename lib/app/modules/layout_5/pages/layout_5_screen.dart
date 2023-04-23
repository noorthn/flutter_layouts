
import 'package:flutter/material.dart';
import 'package:flutter_layout/app/widgets/avatar/avatar_widget.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_5_controller.dart';
import '../widgets/banners_layout_5.dart';
import '../widgets/game_card.dart';
import '../widgets/game_card_2.dart';

class Layout5Screen extends GetView<Layout5Controller> {
  const Layout5Screen({super.key});

  shape({Color color = Colors.red}){
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(.1),
            spreadRadius  : 120,
            blurRadius    : 100
          )
        ]
      ),
    );
  }

  section1(){
    return Row(
      children: [

      ],
    );
  }

  section3(){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 255,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          GameCard(),
          GameCard(
            icon: '9_years_of_shadows.jpeg',
            banner: '9_years_of_shadow.jpg',
          ),
        ]
      )
    );
  }

  section4(){
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Best Game', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              Text('See all', style: TextStyle(color: Colors.blue),)
            ],
          ),
        ),
        const SizedBox(height: 15,),
         Column(
           children: const [
              GameCard2(
                logo: 'lol.jpg',
                name: 'League of legends',
                createBy: 'Moba',
                category: 'Riot games',
              ),
              GameCard2(
                logo: 'valorant.jpg',
                name: 'VALORANT',
                createBy: 'shooter',
                category: 'Riot games',
              ),
              GameCard2()
           ]
         ),
      ],
    );
  }

  section5(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
           child: const Text('Best Game', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
          ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          height: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              BannerLayout5(banner: 'thefinals.jpg'),
              BannerLayout5(banner: 'speedstorm.jpg'),
            ]
          )
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color.fromARGB(255, 38, 37, 42),
      child:Obx(() =>   Stack(
        children: [
          shape(),
          Positioned(
            bottom: Get.height / 2.5,
            right: 0,
            child: shape(color: Colors.blue)
          ),
          Positioned(
            bottom: -50,
            child: shape(color: Colors.amber)
          ),
          
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leadingWidth: 250,
              leading:  Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const AvatarWidget(),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Noortn', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), 
                        Text('Challenger')
                      ]
                    )
                  ]
                )
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 25),
                  child : const Icon(Iconsax.menu)
                )
              ],
            ),
            body: ListView(
              children:  [
                section1(),
                section3(), 
                section4(),
                section5()
              ]
            ),
          ),

          if(controller.showMainModal.value)
          Material(
            color: Colors.transparent,
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Center(
                  child: Container(
                    height: Get.height / 1.5,
                    width: Get.width/ 1.2,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: AssetImage('assets/images/layout_5/dead_cell.png'), fit: BoxFit.cover)
                    ),
                    child:  InkWell(
                      onTap: () {
                        controller.showMainModal = controller.showMainModal.value ? false : true;
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: controller.colors[2],
                            borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: const Icon(Iconsax.close_square, color: Colors.white, size: 30,),
                        )
                      )
                    )
                  )
                )
              ),
            ),
          )
        ]
      )
    ));
  }
  
}