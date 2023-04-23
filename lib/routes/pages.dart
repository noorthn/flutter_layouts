
import 'package:get/get.dart';
import '../app/modules/layout_2/controllers/layout_2_binding.dart';
import '../app/modules/layout_2/pages/layout_2_1_screen.dart';
import '../app/modules/layout_2/pages/layout_2_2_screen copy.dart';
import '../app/modules/layout_2/pages/layout_2_screen.dart';
import '../app/modules/layout_3/controllers/layout_3_binding.dart';
import '../app/modules/layout_3/pages/layout_3_1_screen.dart';
import '../app/modules/layout_3/pages/layout_3_screen.dart';
import '../app/modules/layout_4/controllers/layout_4_binding.dart';
import '../app/modules/layout_4/pages/layout_4_1_screen.dart';
import '../app/modules/layout_4/pages/layout_4_2_screen.dart';
import '../app/modules/layout_4/pages/layout_4_screen.dart';
import '../app/modules/layout_5/controllers/layout_5_binding.dart';
import '../app/modules/layout_5/pages/layout_5_screen.dart';
import 'routes.dart';

import '../app/modules/plash/controllers/splash_binding.dart';
import '../app/modules/home/home_screen.dart';

import '../app/modules/plash/splash_screen.dart';
import '../app/modules/home/controllers/home_binding.dart';

import '../app/modules/layout_1/controllers/layout_1_binding.dart';
import '../app/modules/layout_1/pages/layout_1_detail_screen.dart';
import '../app/modules/layout_1/pages/layout_1_screen.dart';

class AppPage{
  static final List<GetPage> pages = [

    GetPage(
      name    : AppRoutes.splash,
      page    : () =>const  SplashScreen(),
      binding : SplashBinding()
    ),
    GetPage(
      name    : AppRoutes.home,
      page    : () =>const  HomeScreen(),
      binding : HomeBinding()
    ),

    /////LAYOUTS/////

    GetPage(
      name    : AppRoutes.layout1,
      page    : () =>const  Layout1Screen(),
      binding : Layout1Binding()
    ),
    GetPage(
      name    : AppRoutes.layout1Detail,
      page    : () =>const  Layout1DetailScreen(),
      binding : Layout1Binding()
    ),

    GetPage(
      name    : AppRoutes.layout_2,
      page    : () =>const  Layout2Screen(),
      binding : Layout2Binding()
    ),
    GetPage(
      name    : AppRoutes.layout_2_1,
      page    : () =>const  Layout21creen(),
      binding : Layout2Binding()
    ),
    GetPage(
      name    : AppRoutes.layout_2_2,
      page    : () =>const  Layout22creen(),
      binding : Layout2Binding()
    ),
    
    GetPage(
      name    : AppRoutes.layout_3,
      page    : () =>const  Layout3Screen(),
      binding : Layout3Binding()
    ),
    GetPage(
      name    : AppRoutes.layout_3_1,
      page    : () =>const  Layout31Screen(),
      binding : Layout3Binding()
    ),

    GetPage(
      name    : AppRoutes.layout_4,
      page    : () =>const  Layout4Screen(),
      binding : Layout4Binding()
    ),
    GetPage(
      name    : AppRoutes.layout_4_1,
      page    : () =>const  Layout41Screen(),
      binding : Layout4Binding()
    ),
    GetPage(
      name    : AppRoutes.layout_4_2,
      page    : () =>const  Layout42Screen(),
      binding : Layout4Binding()
    ),


    GetPage(
      name    : AppRoutes.layout_5,
      page    : () =>const  Layout5Screen(),
      binding : Layout5Binding()
    ),
  ];
}