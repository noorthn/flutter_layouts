
import 'package:get/get.dart';

import 'layout_5_controller.dart';


class Layout5Binding extends Bindings{

  @override
  void dependencies (){
    Get.lazyPut(() => Layout5Controller());
  }
  
}