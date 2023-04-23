
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_3_controller.dart';
import '../widgets/bottom_nav_widget.dart';
import '../widgets/chart_card_1.dart';
import '../widgets/last_order_card.dart';
import '../widgets/main_chart.dart';

class Layout3Screen extends GetView<Layout3Controller> {
  const Layout3Screen({super.key});

  chartList(){
    return SizedBox(
      height: 150,
      width: Get.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ChartCard1(),
          ChartCard1(),
          ChartCard1(),
        ]
      )
    );
  }

  mainChart(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('User int the last week', style: TextStyle(color: Colors.white, fontSize: 23),),
          Text('+ 3,2%', style: TextStyle(color: Colors.white54, fontWeight: FontWeight.bold, fontSize: 40)),
          Align(alignment: Alignment.centerRight, child: Text('See all', style: TextStyle(color: Colors.white54), textAlign: TextAlign.end,)),
          SizedBox(height: 15),
          MainChartWidget()
        ]
      )
    );
  }

  lastOrders(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Text('Last orders', style: TextStyle(color: Colors.white, fontSize: 23),),
              options()
            ]
          ),
          const SizedBox(height: 25),
          const LastOrderCard(
            image : 'avatar_1',
            name  : 'Diana',
            amount: '\$1.230',
            date  : '18 April 2023',
          ),
          const LastOrderCard(
            image : 'avatar_2',
            name  : 'Yenny ',
            amount: '\$1.230',
            date  : '18 April 2023',
          ),
          const LastOrderCard(
            image : 'avatar_3',
            name  : 'Emili Gonzalez',
            amount: '\$9.030',
            date  : '18 April 2023',
          ),
          const LastOrderCard(
            image : 'avatar_4',
            name  : 'Jhon Doe',
            amount: '\$10.590',
            date  : '18 April 2023',
          )
        ]
      )
    );
  }

  options(){
    return Container(
      padding       : const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration    : BoxDecoration(
        border      : Border.all(color: Colors.white10),
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: DropdownButton<String>(
      value: controller.optionSelected,
      icon: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,),
      elevation: 16,
      style: const TextStyle(color: Colors.white),
      underline: Container(),
      dropdownColor: controller.colors[1],
      onChanged: (String? value) {},
      items: controller.listOptions.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: const TextStyle(color: Colors.white),),
        );
      }).toList(),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: controller.colors[0],
      body: Stack(
        children: [
          ListView(
            children: [
              chartList(),
              mainChart(),
              lastOrders()
            ]
          ),
          const BottomNavWidget()
        ],
      ),
    );
  }
  
}