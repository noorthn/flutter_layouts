
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

import '../controllers/layout_3_controller.dart';

class ChartCard1 extends GetView<Layout3Controller>  {
  const ChartCard1({super.key});

  chart(){
    return SizedBox(
      height: 30,
      child: Sparkline(
        data: const [11,-1.5, 1 - 0, 2, 3, 4 - 5, -1.5, 2, 5, -2.3, 7,2,-5, 10],
         lineColor: Colors.lightGreen[500]!,
        lineWidth: 3,
        averageLine: true,
        averageLabel: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin    : const EdgeInsets.only(left: 15),
      padding   : const EdgeInsets.all(15),
      width     : Get.width / 1.5,
      decoration: BoxDecoration(
        color: controller.colors[1],
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      color       : Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: const Icon(Icons.discount, size: 12,color: Colors.white,),
                  ),
                  const SizedBox(width: 10),
                  const Text('Sales', style: TextStyle(color: Colors.white),)
                ]
              ),
              Container(
                padding   : const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration:  BoxDecoration(
                  color       :  controller.colors[3],
                  borderRadius: const BorderRadius.all(Radius.circular(5))
                ),
                child: const Text('+ 24%'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text('\$ 24,575', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40)),
          chart()
        ]
      )
    );
  }
}