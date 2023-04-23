
import 'package:get/get.dart';

import 'layout_3_controller.dart';


class Layout3Binding extends Bindings{

  @override
  void dependencies (){
    Get.lazyPut(() => Layout3Controller());
  }
  
}