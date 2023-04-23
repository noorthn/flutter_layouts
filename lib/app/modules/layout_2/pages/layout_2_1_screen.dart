

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../widgets/avatar/avatar_widget.dart';
import '../../../widgets/card/hotel_card_wirdget.dart';
import '../../../widgets/menu_item/icon_title_widget.dart';
import '../controllers/layout_2_controller.dart';

class Layout21creen extends GetView<Layout2Controller> {
  const Layout21creen({super.key});

  user(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Hi, Diana', style: TextStyle(fontSize: 20),),
          AvatarWidget(image: 'avatar_2', position: 1.0),
        ]
      ),
    );
  }
  
  titles(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 20),
          Text('Lest Start', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          Text('your vacation!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

  filter(){
    return Container(
      margin  :const  EdgeInsets.only(top: 25),
      padding : const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           SizedBox(
            width: Get.width / 1.4,
             child: TextFormField(
              controller: controller.emailCt,
              decoration:  const InputDecoration(
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color.fromARGB(39, 158, 158, 158))),
                 hintText      : 'Search here',
              )
                   ),
          ),
          InkWell(
            child: Container(
              padding:const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(10,144, 137, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Icon(Iconsax.filter, color: Colors.white,),
            ),
          )
        ]
      ),
    );
  }

  categories(){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 110,
      width: Get.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(width: 25),
          IconTitleWidget(
            padding: 25,
            radius: 10,
            title: 'Flight',
            icon  : Icons.flight_takeoff,
            colorIcon:Color.fromRGBO(10,144, 137, 1),
            color : Color.fromRGBO(202, 231, 230, 1)
          ),
          SizedBox(width: 25),
          IconTitleWidget(
            padding: 25,
            radius: 10,
            title: 'Hotel',
            icon  : Icons.hotel,
            colorIcon:Color.fromRGBO(10,144, 137, 1),
            color : Color.fromRGBO(202, 231, 230, 1)
          ),
          SizedBox(width: 25),
          IconTitleWidget(
            padding: 25,
            radius: 10,
            title: 'Bus',
            icon  : Icons.bus_alert,
            colorIcon:Color.fromRGBO(10,144, 137, 1),
            color : Color.fromRGBO(202, 231, 230, 1)
          ),
          SizedBox(width: 25),
          IconTitleWidget(
            padding: 25,
            radius: 10,
            title: 'Train',
            icon  : Icons.train,
            colorIcon:Color.fromRGBO(10,144, 137, 1),
            color : Color.fromRGBO(202, 231, 230, 1)
          ),
          SizedBox(width: 25),
          IconTitleWidget(
            padding: 25,
            radius: 10,
            title: 'Restaurant',
            icon  : Icons.restaurant,
            colorIcon:Color.fromRGBO(10,144, 137, 1),
            color : Color.fromRGBO(202, 231, 230, 1)
          ),
        ],
      ),
    );
  }

  banner(){
    return Container(
      padding : const EdgeInsets.all(15),
      margin  : const EdgeInsets.symmetric(horizontal: 20),
      height  : 150,
      decoration  : const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        image       : DecorationImage(image: AssetImage('assets/images/layout_2/beach.jpg'), fit: BoxFit.cover)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text('Get', style: TextStyle(color: Colors.white, fontSize: 20)),
          Text('20% off', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),),
          Text('for today', style: TextStyle(color: Colors.white, fontSize: 20)),
        ]
      )
    );
  }

  bottomNavigation(){
    return Container(
      margin  : const EdgeInsets.only(left: 20, right: 20, bottom: 30),
      padding : const EdgeInsets.all(15),
      height  : 80,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(10,144, 137, 1),
        borderRadius: BorderRadius.all(Radius.circular(40))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Iconsax.home, color: Colors.white,),
          Icon(Iconsax.heart, color: Colors.white),
          Icon(Iconsax.building_3, color: Colors.white),
          Icon(Iconsax.setting, color: Colors.white),
        ]
      )
    );
  }

  gridHotel(){
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          HotelCardWidget(
            image: 'hotel_1',
            name: 'Miami',
            star: 4,
          ),
          HotelCardWidget(
            image : 'hotel_2',
            name  : 'La guaira',
          ),
          HotelCardWidget(
            image: 'hotel',
            name  : 'Dubai',
            star: 3,
          )
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(

        children: [
          user(),
          titles(),
          filter(),
          categories(),
          banner(),
          gridHotel()
        ]
      ),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}