
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/layout_3_controller.dart';

class TransactionCard extends GetView<Layout3Controller> {

  final IconData icon;
  final String app;
  final String date;
  final String amount;
  final String keyD;

  const TransactionCard({
    super.key,
    this.icon   = Iconsax.box,
    this.app    = 'Twitch',
    this.date   = '19 April 2023',
    this.amount = '0.0',
    this.keyD   = '0'
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key       : Key(keyD),
      background: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment : Alignment.centerRight,
              child     : Container(
                padding: const EdgeInsets.all(17),
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Colors.white10,
                   borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: const Icon(Iconsax.trash, color: Colors.red,),
              )
            ),
            Align(
              alignment : Alignment.centerLeft,
              child     : Container(
                padding: const EdgeInsets.all(17),
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Colors.white10,
                   borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: const Icon(Iconsax.card_add, color: Colors.white,),
              )
            ),
          ],
        )
      ),
      child : Container(
        margin    : const EdgeInsets.only(top: 15),
        padding   : const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: const BoxDecoration(
          color       : Colors.white10,
          borderRadius: BorderRadius.all(Radius.circular(25))
        ),
        child: Row(
          children: [
            Container(
              padding   : const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color       : controller.colors[3],
                borderRadius: const BorderRadius.all(Radius.circular(30))
              ),
              child: Icon(icon),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(app, style: const TextStyle(color: Colors.white,  fontSize: 17)),
                  const SizedBox(height: 5),
                  Text(date, style: const TextStyle(color: Colors.white54)),
                ]
              )
            ),
            Text(date, style:  TextStyle(color: controller.colors[3]),),
          ]
        )
      ),
    );
  }
}