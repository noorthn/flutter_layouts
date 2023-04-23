
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class IconTitleWidget extends StatelessWidget {
  
  final String title;
  final IconData icon;
  final bool status;
  final Color color;
  final Color colorIcon;
  final double radius;
  final double padding;

  const IconTitleWidget({
    super.key,
    this.title  = '',
    this.icon   = Iconsax.box, 
    this.status = false,
    this.color  =  const Color.fromARGB(255, 255, 255, 255),
    this.colorIcon  = Colors.white,
    this.radius = 100.0,
    this.padding = 15.0
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding     : EdgeInsets.all(padding),
          decoration  : BoxDecoration(
            color       : color,
            borderRadius:  BorderRadius.all(Radius.circular(radius))
          ),
          child: Icon(icon, color: colorIcon)
        ),
        const SizedBox(height: 10),
        Text(title)
      ],
    );
  }
}