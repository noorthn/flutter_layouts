
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_3_controller.dart';
import '../widgets/bottom_nav_widget.dart';
import '../widgets/card_style_1.dart';
import '../widgets/card_style_2.dart';
import '../widgets/indicator_icon_title.dart';
import '../widgets/transaction_card.dart';
class Layout31Screen extends GetView<Layout3Controller> {
  
  const Layout31Screen({super.key});

  section1(){
    return Container(
      height: Get.height / 3.6,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CardStyle1(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const CardStyle2(
                icon: Iconsax.add,
                showBorder: true,
              ),
              CardStyle2(
                icon      : Iconsax.card,
                color     : controller.colors[2],
                colorIcon : Colors.black,
              ),
              const CardStyle2(
                icon      : Iconsax.card_coin,
                color     : Color.fromARGB(255, 189, 134, 238),
                colorIcon : Colors.black,
              )
            ]
          )
        ]
      ),
    );
  }

  section2(){
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IndicatorIconTileWdget(
            title: 'Spent',
            amount: '\$123,456',
          ),
          IndicatorIconTileWdget(
            title : 'Earned',
            amount: '\$549,187',
            icon  : Iconsax.arrow_up_2,
          ),
          IndicatorIconTileWdget(
            title: 'Cashbank',
            amount: '\$213,678',
          ),
        ]
      ),
    );
  }

  section3(){
    return Container(
      height    : Get.height / 1.7,
      margin    : const EdgeInsets.only(top: 20),
      padding    : const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      decoration: BoxDecoration(
        color       : controller.colors[1],
        borderRadius: const BorderRadius.only(
          topLeft     : Radius.circular(30),
          topRight    : Radius.circular(30)
        )
      ),
      child : Column(
        children: [
          Container(
            padding    : const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Transactions', style: TextStyle(color: Colors.white, fontSize: 23),),
                Text('Analitys', style: TextStyle(color: Colors.white54),),
              ]
            )
          ),
          const  TransactionCard(
            keyD: '0',

          ),
          const TransactionCard(
            keyD: '1',
          ),
          const TransactionCard(
            keyD: '2',
          ),
          const TransactionCard(
            keyD: '3',
          ),
        ]
      )
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
              section1(),
              section2(),
              section3()
            ]
          ),
          const BottomNavWidget(color: true)
        ],
      ),
    );
  }
  
}