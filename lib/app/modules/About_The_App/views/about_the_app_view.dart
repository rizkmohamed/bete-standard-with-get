import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_the_app_controller.dart';

class AboutTheAppView extends GetView<AboutTheAppController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          'عن التطبيق',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          'AboutTheAppView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
