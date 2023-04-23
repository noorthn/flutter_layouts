
import 'package:get/get.dart';

import 'layout_4_controller.dart';


class Layout4Binding extends Bindings{

  @override
  void dependencies (){
    Get.lazyPut(() => Layout4Controller());
  }
  
}