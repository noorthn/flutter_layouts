
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PostCard1 extends StatelessWidget {
  final bool    status;
  final String  title;
  final String  location;
  final String  image;

  const PostCard1({
    super.key,
    this.status   = false,
    this.title    = '',
    this.location = '',
    this.image = 'layout_1_post'
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed('/layout1Detail'),
      child: Center(
        child: Container(
          width : Get.width / 1.7,
          height: Get.height / 2.7,
          margin: const EdgeInsets.only(left: 30),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 253, 233, 233),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow   : [  
              BoxShadow( 
                color       : Colors.grey.withOpacity(0.1), 
                spreadRadius: 7,  
                blurRadius  : 7,
                offset      : const Offset(10, 15)
              )
            ],
            image:   DecorationImage(image: AssetImage('assets/images/layout_1/$image.jpg'),fit: BoxFit.cover)
          ),  
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width     : double.infinity,
                alignment : Alignment.topRight,
                child     : Container(
                  width     : 50,
                  height    : 50,
                  decoration:  BoxDecoration(
                    color      : status ? const Color.fromARGB(45, 183, 94, 88) : const Color.fromARGB(58, 255, 255, 255),
                    borderRadius:  const BorderRadius.all(Radius.circular(100)),
                  ),
                  child:  Center(child: Icon(Iconsax.heart5, color:status ? Colors.red : Colors.white,)),
                )
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style:  const TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                  const SizedBox(height: 10),
                  Row(
                    children:  [
                      const Icon(Iconsax.location, color: Colors.white),
                      const SizedBox(width: 20),
                      Text(location, style: const TextStyle(color: Colors.white)),
                    ]
                  )
                ]
              )
            ]
          )
        )
      ),
    );
  }
}