

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelCardWidget extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final int star;

  const HotelCardWidget({
    super.key,
    this.image    = 'hotel',
     this.name    = 'Sin nombre',
     this.price   = '0.0',
     this.star  = 5
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Get.toNamed('/layout_2_2');},
      child: Container(
        height  : 160,
        width   :  Get.width / 2.5,
        margin  : const EdgeInsets.only(left: 20),
        padding : const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                image       : DecorationImage(image: AssetImage('assets/images/layout_2/$image.jpg'),fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
            ),
            const SizedBox(height: 10),
            Text(name, style:const   TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    for(int i = 0; i < star; i++)
                      const Icon(Icons.star, size: 16,color: Colors.amber),
                    for(int i = 0; i < (5 - star) ; i++)
                      const Icon(Icons.star, size: 16,color: Color.fromARGB(108, 158, 158, 158)),
                  ],
                ),
                Text(price, style: const TextStyle(color: Colors.green, fontSize: 16),)
              ],
            )
          ]
        )
      )
    );
  }
}