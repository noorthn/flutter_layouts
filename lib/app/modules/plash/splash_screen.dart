

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            if(controller.status.value)
              const Text('Layouts', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
          ]
        ),
      )
    );
  }
}