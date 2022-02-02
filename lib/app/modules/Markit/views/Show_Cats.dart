import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Product_Card.dart';
import 'package:prod_family/app/modules/Markit/controllers/markit_controller.dart';

class ShowCategorie extends StatefulWidget {
  @override
  _ShowCategorieState createState() => _ShowCategorieState();
}

class _ShowCategorieState extends State<ShowCategorie> {
  final controller = Get.put(MarkitController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Obx(() {
        if (controller.isLoading1.value)
          return Center(
              child: CircularProgressIndicator(
            color: Colors.white,
            backgroundColor: Colors.red,
            strokeWidth: 10,
          ));
        else
          return GridView.builder(
            padding: EdgeInsets.all(0),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 1 / 1.37,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0),
            scrollDirection: Axis.vertical,
            itemCount: controller.ProductsByCatList.length,
            itemBuilder: (context, index) => GestureDetector(
              child: Build_Market_Product_Card(
                product: controller.ProductsByCatList[index],
              ),
              onTap: () {},
            ),
          );
      }),
    );
  }
}


// class ShowCategorie extends StatelessWidget {
//   final controller = Get.put(MarkitController());
//   ShowCategorie({required this.lable});

//   final String lable;

//   Widget build(BuildContext context) {
//     controller.fetchProductsByCat(lable);

//     return Container(
//       height: 400,
//       child: Obx(() {
//         if (controller.isLoading1.value)
//           return Center(child: CircularProgressIndicator());
//         else
//           return GridView.builder(
//             padding: EdgeInsets.all(0),
//             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent: 300,
//                 childAspectRatio: 1 / 2,
//                 crossAxisSpacing: 0,
//                 mainAxisSpacing: 0),
//             scrollDirection: Axis.vertical,
//             itemCount: controller.ProductsByCatList.length,
//             itemBuilder: (context, index) => GestureDetector(
//               child: Build_Market_Product_Card(
//                 product: controller.ProductsByCatList[index],
//               ),
//               onTap: () {},
//             ),
//           );
//       }),
//     );
//   }
// }
