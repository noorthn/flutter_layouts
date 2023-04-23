
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../widgets/avatar/avatar_widget.dart';
import '../controllers/layout_1_controller.dart';

class Layout1DetailScreen extends GetView<Layout1Controller> {
  const Layout1DetailScreen({super.key});

  iconData({IconData icon = Iconsax.box, String title = '', Color color = Colors.amber}){
    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 10),
        Text(title)
      ]
    );
  }

  usersList(){
    return Container(
      margin: const EdgeInsets.symmetric( vertical: 20),
      child: Row(
        children: [
          Stack(
            children: const [
              AvatarWidget(),
              AvatarWidget(image: 'avatar_2', position: 1.0),
              AvatarWidget(image: 'avatar_3', position: 2.0),
              AvatarWidget(image: 'avatar_4', position: 3.0),
              AvatarWidget(image: 'avatar_5', position: 4.0),
              AvatarWidget(other: true, position: 5.0),
            ]
          ),
          const SizedBox(width: 20),
          const Text('Recommended')
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 244, 248),
      body: Stack(
        children: [

          Container(
            height: Get.height / 2,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/layout_1/layout_1_post_2.jpg'),fit: BoxFit.cover),
              // color:  Color.fromARGB(255, 252, 244, 248),
              //  borderRadius: BorderRadius.only(bottomLeft : Radius.circular(70))
            )
          ),
          
          Container(
            margin: EdgeInsets.only(top: Get.height / 2.5 - 100, left: 20),
            child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const  Text('Plitvice Lakes', style:   TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                  const SizedBox(height: 10),
                  Row(
                    children:  const [
                      Icon(Iconsax.location, color: Colors.white),
                      SizedBox(width: 20),
                      Text('National Parck, Croatia', style: TextStyle(color: Colors.white)),
                    ]
                  )
                ]
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: Get.height / 2.5,),
            decoration: const BoxDecoration(
              color:  Color.fromARGB(255, 252, 244, 248),
               borderRadius: BorderRadius.only(topRight : Radius.circular(70))
            ),
            child: ListView(
              children: [
                Stack(
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
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          iconData(icon: Iconsax.star, title: '5.0'),
                          iconData(icon: Iconsax.star, title: '19 C', color  :  const Color.fromARGB(114, 33, 149, 243)),
                          iconData(icon: Iconsax.star, title: '4 Days', color: const Color.fromARGB(139, 233, 30, 98)),
                        ]
                      )
                    ),
                  ]
                ),


                Container(
                  padding : const EdgeInsets.symmetric(horizontal: 20),
                  width   : double.infinity,
                  height  : Get.height / 2,
                  decoration    : const BoxDecoration(
                    color       :  Colors.white,
                    borderRadius: BorderRadius.only(topRight : Radius.circular(70))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      usersList(),
                      const SizedBox(height: 20),
                      const Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20),
                      const Text( 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', textAlign: TextAlign.justify,)

                    ]
                  )
                ),

              ]
            )
          ),

          Container(
            margin  : const EdgeInsets.only(top: 60, left: 20, right: 30),
            child   : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(Icons.keyboard_arrow_left_rounded, size: 30, color: Colors.white)
                ),

                Container(
                  width     : 50,
                  height    : 50,
                  decoration:  const BoxDecoration(
                    color       :   Color.fromARGB(58, 255, 255, 255),
                    borderRadius:   BorderRadius.all(Radius.circular(100)),
                  ),
                  child:  const Center(child: Icon(Iconsax.heart5, color:  Colors.white,)),
                ),
              ]
            )
          ),
        ]
      ),
      bottomNavigationBar: Container(
        height  : 130,
        padding  : const EdgeInsets.symmetric(horizontal: 30),
        color   : Colors.white,
        child   : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            RichText(
              text: const TextSpan(
                text    : '\$ 350 ',
                style   : TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: ' / per one', style: TextStyle(fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            
            InkWell(
              child: Container(
                padding   : const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child     : const Text('Buy Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              )
            )
          
          ]
        )
      ),
    );
  }
}