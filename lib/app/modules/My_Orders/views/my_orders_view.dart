import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Containers.dart';

import '../controllers/my_orders_controller.dart';

class MyOrdersView extends GetView<MyOrdersController> {
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
          'طلباتي',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Product_Container(),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'طوق عنق من اللؤلؤ',
                      style: TextStyle(
                        color: KColor_Text_Main_2,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: KColor_Main_Primary_1,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'شارع الميدان ، جدة',
                          style: TextStyle(
                            color: KColor_Text_Main_2,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: KColor_Main_Primary_1,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'السعر 18.00 ريال',
                          style: TextStyle(
                            color: KColor_Text_Main_2,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: KColor_Main_Primary_1,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'رسوم التوصيل 18.00 ريال',
                          style: TextStyle(
                            color: KColor_Text_Main_2,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text('العدد'),
                        SizedBox(width: 30),
                        Counter_Container()
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('المجموع الكلي'),
                SizedBox(width: 15),
                Text(
                  '90.00',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text('ريال'),
              ],
            )
          ],
        ),
      )),
    );
  }
}
