
import 'package:get/get.dart';

import 'layout_1_controller.dart';


class Layout1Binding extends Bindings{

  @override
  void dependencies (){
    Get.lazyPut(() => Layout1Controller());
  }
  
}