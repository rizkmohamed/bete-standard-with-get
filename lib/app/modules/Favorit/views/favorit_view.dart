import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Cart_Paroduct_card.dart';

import '../controllers/favorit_controller.dart';

class FavoritView extends GetView<FavoritController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          'عناصر محفوظة',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Cart_Product(),
            Cart_Product(),
          ],
        ),
      )),
    );
  }
}
