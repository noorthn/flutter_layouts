
import 'package:get/get.dart';

import 'layout_2_controller.dart';


class Layout2Binding extends Bindings{

  @override
  void dependencies (){
    Get.lazyPut(() => Layout2Controller());
  }
  
}