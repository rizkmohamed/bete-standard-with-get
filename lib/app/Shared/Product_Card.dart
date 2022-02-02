import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Containers.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/data/Models/Product/Product/Product.dart';
import 'package:prod_family/app/routes/app_pages.dart';

class Build_Market_Product_Card extends StatelessWidget {
  const Build_Market_Product_Card({required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.PRODUCT_DETAILS);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Product_Container(
                    height: 148,
                    width: 156,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Favorit_Button_Container(height: 22, width: 22),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text(
              product.name,
              style: KText_Style_Product_L1,
            ),
            Text(
              'محل الالبسة التركية',
              style: KText_Style_H_3,
            ),
            Row(
              children: [
                Text(
                  '240 ريال',
                  style: KText_Style_FormText,
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
