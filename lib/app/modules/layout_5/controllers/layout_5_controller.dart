
// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Layout5Controller extends GetxController{

  RxBool _isLoarder                                 = false.obs;
  RxBool get isLoarder                              => _isLoarder;
  set isLoarder(data){ _isLoarder.value             = data; update();}


  RxBool _showMainModal                                 = true.obs;
  RxBool get showMainModal                              => _showMainModal;
  set showMainModal(data){ _showMainModal.value             = data; update();}

  RxString _discount                                = 'Chat'.obs;
  RxString get discount                             => _discount;
  set discount(data){ _discount.value               = data; update();}

  TextEditingController emailCt                     = TextEditingController();
  TextEditingController passwordCt                  = TextEditingController();
  TextEditingController discountCt                  = TextEditingController();
  
  List<Color> colors = [
    const Color.fromRGBO(37, 37, 37, 1),
    const Color.fromRGBO(51, 44, 37, 1),
    const Color.fromRGBO(95, 72, 222,1),
    const Color.fromRGBO(255, 243, 122, 1),
  ];

  RxList<Map> _productsInCart                       = RxList<Map<dynamic, dynamic>>([]);
  RxList<Map> get productsInCart                    => _productsInCart;

  RxInt _quantity                                   = 0.obs;
  RxInt get quantity                                => _quantity;
  set quantity(data){ _quantity.value               = data; update();}

  RxInt _total                                      = 0.obs;
  RxInt get  total                                  => _total;
  set total(data){_total.value                      = data; update();}

  Map _product                                      = {};
  Map get product                                   => _product;
  set product(data){ _product                       = data; update();}

  addProduct(product, action){
    
    var index = _productsInCart.indexWhere((e) => e['id'] == product['id']);

    if(action){
      if( index == -1){
        product['quantity'] = 1;
        _productsInCart.add(product);
      }else{
        var b = {
          'id'      : product['id'],
          'name'    : product['name'],
          'icon'    : product['icon'],
          'price'   : product['price'],
          'quantity': _productsInCart[index]['quantity'] + 1,
        };
        _productsInCart[index] = b;
      }
    }else{

      if(_productsInCart[index]['quantity'] > 1){

        _productsInCart[index] = {

          'id'      : product['id'],
          'name'    : product['name'],
          'icon'    : product['icon'],
          'price'   : product['price'],
          'quantity': product['quantity'] - 1,

        };

      }else{

        _productsInCart.removeAt(index);

      }

    } 
    
    int a = 0;
    int b = 0;

    for(var item in productsInCart){
       a      =   a +  int.parse( item['quantity'].toString());
       b      = b + int.parse((item['quantity'] * item['price']).toString());
    }

     total = b;

    quantity = a;
    
    update();
  }

  applyDiscount(){
    if(discountCt.text == discount.value){
      
    }
  }

}