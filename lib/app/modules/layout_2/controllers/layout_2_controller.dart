
// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Layout2Controller extends GetxController{

  final loginKey                                    = GlobalKey<FormState>();

  RxBool _showPassword                              = false.obs;
  RxBool get showPassword                           => _showPassword;
  set  showPassword(data){ _showPassword.value      = showPassword.value ? false : true; update();}

  RxBool _isEmail                                   = false.obs;
  RxBool get isEmail                                => _isEmail;
  set isEmail(data){ _isEmail.value                 = data; update();}

  TextEditingController emailCt                     = TextEditingController();
  TextEditingController passwordCt                  = TextEditingController();

}