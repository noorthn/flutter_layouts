
// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Layout3Controller extends GetxController{

  final loginKey                                    = GlobalKey<FormState>();

  RxBool _showPassword                              = false.obs;
  RxBool get showPassword                           => _showPassword;
  set  showPassword(data){ _showPassword.value      = showPassword.value ? false : true; update();}

  RxBool _isEmail                                   = false.obs;
  RxBool get isEmail                                => _isEmail;
  set isEmail(data){ _isEmail.value                 = data; update();}

  TextEditingController emailCt                     = TextEditingController();
  TextEditingController passwordCt                  = TextEditingController();
  
  List<Color> colors = [
    const Color.fromRGBO(38, 38, 40, 1),
    const Color.fromRGBO(54, 56, 58, 1),
    const Color.fromRGBO(121, 240, 171, 1),
    const Color.fromRGBO(255, 243, 122, 1),
  ];

 List<String> listOptions = <String>['Last 3 hours', 'Last day', 'Last week', 'Last 15 days'];

 String optionSelected = 'Last 3 hours';

}