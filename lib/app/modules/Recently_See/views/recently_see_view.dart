import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Containers.dart';

import '../controllers/recently_see_controller.dart';

class RecentlySeeView extends GetView<RecentlySeeController> {
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
          'تم مشاهدتها مؤخراً',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            _Build_Product(),
            _Build_Product(),
            _Build_Product(),
            _Build_Product(),
            _Build_Product(),
          ],
        ),
      )),
    );
  }
}

class _Build_Product extends StatelessWidget {
  const _Build_Product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
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
            ],
          )
        ],
      ),
    );
  }
}
