
import 'package:get/get.dart';

class SplashController extends GetxController{

  @override
  void onReady()async {
    super.onReady();
      toHome();
  }

  RxBool status      = false.obs;

  toHome(){
    Get.offAndToNamed('/home');
  }

}