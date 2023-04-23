
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/layout_2_controller.dart';

class Layout2Screen extends GetView<Layout2Controller> {
  const Layout2Screen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/layout_2/beach.jpg'), 
            fit: BoxFit.cover
          )
        ),
      child: Scaffold(
        backgroundColor : Colors.transparent,
        body            : LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints){
            return ConstrainedBox(
              constraints: BoxConstraints(maxHeight: viewportConstraints.maxHeight),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Form(
                  key: controller.loginKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height / 7),
                      const Center(child: Text('TRAVELLO', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
                      const Center(child: Text('Travel with us!')),
                    
                      const SizedBox(height: 100),
                    
                      const Text('Email', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),

                      Obx(() => TextFormField(
                        controller: controller.emailCt,
                        validator: (value) {
                          if(value!.isEmpty || !GetUtils.isEmail(value)  ){
                            return 'Enter a valid email.';
                          }
                          return null;
                        },
                        decoration:  InputDecoration(
                          enabledBorder : const UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),  
                          focusedBorder : const UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan),), 
                          hintText      : 'example@tw.com',
                          suffixIcon: Icon(Icons.check_circle, color: controller.isEmail.value ? Colors.green :  Colors.red,)
                        )
                      )),

                      const SizedBox(height: 40),
                      const Text('Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                       Obx(() =>  TextFormField(
                        controller  : controller.passwordCt,
                        obscureText : controller.showPassword.value,
                        decoration  : InputDecoration(
                          enabledBorder : const UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),  
                          focusedBorder : const UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan),), 
                          hintText      : '******',
                          suffixIcon: IconButton(
                            icon: Icon(!controller.showPassword.value ? Icons.visibility_off : Icons.remove_red_eye, color: Colors.white,), 
                            onPressed: () {
                              controller.showPassword = false;
                            },
                          ),
                          
                        )
                      )),
                      
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          alignment : Alignment.centerRight,
                          padding   : const EdgeInsets.symmetric( vertical: 20),
                          child     : const Text('Forgot Password')
                        ),
                      )
                    
                    ]
                  ),
                )
              )
            );
          }
        ),
        bottomNavigationBar: SizedBox(
          height: 129,
          child : Column(
            children: [
              
              RichText(
                text: const TextSpan(
                  text    : 'Dont have account?',
                  style   : TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(text: '  Sign Up', style: TextStyle(color: Colors.red, fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              
              InkWell(
                onTap: () {
                  if(GetUtils.isEmail(controller.emailCt.text)){
                    controller.isEmail = true;
                  }
                  if (controller.loginKey.currentState!.validate()) {
                    Get.toNamed('/layout_2_1');
                  }
                },
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color       : Color.fromRGBO(10,144, 137, 1),
                    borderRadius:  BorderRadius.only(
                      topRight    : Radius.circular(30),
                      topLeft     : Radius.circular(30)
                    )
                  ),
                  child: const Center(child: Text('Log In', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),)),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}