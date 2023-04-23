// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_2_controller.dart';

class Layout22creen extends GetView<Layout2Controller> {
  const Layout22creen({super.key});

  image(){
    return Stack(
      children: [
        Container(
          height: Get.height / 2.5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage('assets/images/layout_2/beach.jpg'),
              fit: BoxFit.cover
            )
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Get.back(),
              child: Container(
                margin    : const EdgeInsets.all(15),
                padding   : const EdgeInsets.all(15),
                width     : 50,
                height    : 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(88, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Icon(Icons.arrow_back_ios),
              )
            ),
            InkWell(
              onTap: () => Get.back(),
              child: Container(
                margin    : const EdgeInsets.all(15),
                padding   : const EdgeInsets.all(15),
                width     : 50,
                height    : 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(88, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Icon(Icons.share),
              )
            ),
          ]
        )
      ]
    );
  }

  data(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text('Miami, Hotel Xyz', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        const SizedBox(height: 10),
        Row(
          children: [
            for(int i = 0; i < 5; i++)
              const Icon(Icons.star, size: 16,color: Colors.amber),
            const SizedBox(width: 10),
            Text('4.8')
          ]
        ),
        const SizedBox(height: 20),
        Text('About', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        SizedBox(height: 15),
        const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', textAlign: TextAlign.justify,)

      ],
    );
  }

  gallery(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Gallery', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            imageGallery('hotel_1'),
            imageGallery('hotel_2'),
            imageGallery('hotel'),
            imageGallery('hotel_1'),
          ]
        )
      ]
    );
  }

  imageGallery(String image){
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        image: DecorationImage(image: AssetImage('assets/images/layout_2/$image.jpg'), fit: BoxFit.cover)
      ),
    );
  }

  bottomNav(){
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

            RichText(
              text: const TextSpan(
                text    : '\$ 450 ',
                style   : TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: ' package', style: TextStyle(fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            
            InkWell(
              child: Container(
                padding   : const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(10,144, 137, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child     : const Text('Buy Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              )
            )
        ]
      )
    );
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 65),
          image(),
          data(),
          Divider(),
          gallery()
        ]
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

}