

import 'package:flutter/material.dart';

import '../../../widgets/avatar/avatar_widget.dart';

class LastOrderCard extends StatelessWidget {
  final String image;
  final String name;
  final String amount;
  final String date;

  const LastOrderCard({
    super.key,
    this.image  = 'avatar_1',
    this.name   = 'Jhon Doe',
    this.amount = '\$3.123',
    this.date   = '19 April 2023',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child : Row(
        children: [
          AvatarWidget(image: image),
          const SizedBox(width: 15),
          Expanded(child: Text(name, style: const TextStyle(color: Colors.white, fontSize: 15))),
          Text(amount, style: const TextStyle(color: Colors.white, fontSize: 15)),
          const SizedBox(width: 15),
          Text(date, style: const TextStyle(color: Colors.white, fontSize: 15)),
        ]
      ) 
    );
  }
}