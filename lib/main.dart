import 'package:flutter/material.dart';
import 'package:flutter_layout/routes/pages.dart';
import 'package:get/route_manager.dart';

import 'app/modules/plash/controllers/splash_binding.dart';
import 'app/modules/plash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home                      : const SplashScreen(),
      initialBinding            : SplashBinding(),
      getPages                  : AppPage.pages,
    );
  }
}