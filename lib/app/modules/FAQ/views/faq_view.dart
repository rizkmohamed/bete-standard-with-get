import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'الأسئلة الأكثر شيوعاً',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Divider(),
            SingleChildScrollView(
              child: Column(
                children: [],
              ),
            )
          ],
        ));
  }
}
