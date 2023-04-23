

import 'package:flutter/material.dart';

class CarouselMenu1 extends StatelessWidget {
  const CarouselMenu1({super.key});

  item({String title = 'title'}){
    return Container(
      margin  : const EdgeInsets.only(left: 20),
      child   : Text(title, style: const TextStyle(fontSize: 17),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height  : 30,
      width   : double.infinity,
      margin  : const EdgeInsets.only(top: 20),
      child   : ListView(
        scrollDirection: Axis.horizontal,
        children: [
          item(title: 'Best nature'),
          item(title: 'Must viewed'),
          item(title: 'Recommended'),
          item(title: 'others')
        ]
      )
    );
  }
}