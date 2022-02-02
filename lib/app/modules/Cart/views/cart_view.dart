import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Cart_Paroduct_card.dart';
import 'package:prod_family/app/Shared/Containers.dart';
import 'package:prod_family/app/Shared/CustomButtons.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/services/custom_icons.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.close,
            )),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          'سلة التسوق',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Slidable(
                useTextDirection: false,
                key: const ValueKey(0),
                startActionPane: ActionPane(
                  motion: ScrollMotion(),
                  //dismissible: DismissiblePane(onDismissed: () {}),
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 193, 203, 0.17),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 40),
                            GestureDetector(
                              onTap: () => Get.bottomSheet(Container(
                                width: double.infinity,
                                height: 260,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('حذف', style: KText_Style_14),
                                      SizedBox(height: 10),
                                      Text(
                                          'هل أنت منتأكد من انك تريد حذف هذا العنصر من السلة؟',
                                          style: KText_Style_14_R),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Row(
                                          children: [
                                            Product_Container(
                                              height: 52,
                                              width: 52,
                                            ),
                                            SizedBox(width: 10),
                                            Text('طوق عنق من لؤلؤ',
                                                style: KText_Style_14)
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Custom_Button_2_2(
                                            lable: 'تم',
                                          ),
                                          SizedBox(width: 20),
                                          Custom_Button_2_1(
                                            lable: 'الغاء',
                                            height: 44,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                              child: Icon(
                                CustomIcons.cart,
                                color: Color(0xffFE3F60),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                child: Cart_Product(),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 117,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0, 5),
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Custom_Button_2_2(
                            lable: 'متابعة التسوق',
                          ),
                          SizedBox(width: 20),
                          Custom_Button_3(),
                        ],
                      ),
                      SizedBox()
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}
