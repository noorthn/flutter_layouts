

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class IndicatorIconTileWdget extends StatelessWidget {
  
  final String title;
  final String amount;
  final IconData icon;

  const IndicatorIconTileWdget({
    super.key,
    this.title  = 'title',
    this.amount = '0.0',
    this.icon   = Iconsax.arrow_down_1
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding   : const EdgeInsets.all(4),
          decoration:  BoxDecoration(
            color         : icon == Iconsax.arrow_down_1 ?  Colors.white30 : Colors.amber,
            borderRadius  : const BorderRadius.all(Radius.circular(5))),
          child:  Icon(icon,),
        ),
        const SizedBox(height: 10),
        Text(title, style: const TextStyle(color: Colors.white54)),
        const SizedBox(height: 10),
        Text(amount, style: const TextStyle(color: Colors.white)),
      ]
    );
  }
}