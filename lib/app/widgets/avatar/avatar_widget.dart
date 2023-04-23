

import 'package:flutter/material.dart';


class AvatarWidget extends StatelessWidget {

  final String image;
  final double position;
  final bool other;
  
  const AvatarWidget({
    super.key,
    this.image      = 'avatar_1',
    this.position   = 0.0,
    this.other      = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(left: 30 * position),
      padding: other ? const EdgeInsets.all(10) : const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 124, 162),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        image:other ? null : DecorationImage(image: AssetImage('assets/images/avatar/$image.jpg'), fit: BoxFit.cover)
      ),
      child: other ? const Center(child: Text('26+', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),)) :Container(),
    );
  }
}