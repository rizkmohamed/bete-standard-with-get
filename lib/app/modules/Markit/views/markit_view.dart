//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Containers.dart';
import 'package:prod_family/app/Shared/CustomButtons.dart';
import 'package:prod_family/app/Shared/Product_Card.dart';
import 'package:prod_family/app/Shared/ProgressIndicator.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/modules/Markit/views/TabBar.dart';
import 'package:prod_family/app/services/custom_icons.dart';

import '../controllers/markit_controller.dart';

class MarkitView extends GetView<MarkitController> {
  final controller = Get.put(MarkitController());

  @override
  Widget build(BuildContext context) {
    // return Obx(() {
    //   if (controller.isLoading.value)
    //     return Center(child: CircularProgressIndicator());
    //   else
    //     return MarketTapBar();
    // });
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _Header(),
            Filtter(),
            //CustomTapBar(),
            _Categories(),
            Obx(() {
              if (controller.isLoading1.value)
                return Custom_ProgressIndicator();
              else
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: GridView.builder(
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
                    ),
                  ),
                );
            })
          ],
        ),
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  final controller = Get.put(MarkitController());

  _Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
          height: 44.5,
          color: Color.fromRGBO(242, 246, 249, 0.4),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categoriesLis.length,
            itemBuilder: (context, index) => GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() => Text(
                      controller.categoriesLis[index].name,
                      style: controller.selectedCatIndex == index
                          ? KText_Style_CatItem_Selected
                          : KText_Style_CatItem_not_Selected,
                    )),
              ),
              onTap: () {
                controller.fetchProductsByCat(
                    controller.categoriesLis[index].id.toString());
                controller.onSelectCat(index);
              },
            ),
          )),
    );
  }
}

class Filtter extends StatelessWidget {
  final controller = Get.put(MarkitController());

  Filtter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        height: 40,
        color: KColor_InputText_2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Get.bottomSheet(Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Sheet_Divider(),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Form(
                          key: controller.felterFormKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: GetBuilder<MarkitController>(
                            init: MarkitController(),
                            initState: (_) {},
                            builder: (_) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('الفلترة حسب',
                                      style: KText_Style_FormText),
                                  SizedBox(height: 10),
                                  Text('الاقسام', style: KText_Style_H_2),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CheckboxListTile(
                                          dense: true,
                                          title: Text("الاكسسوارات",
                                              style: KText_Style_14_R),
                                          contentPadding: EdgeInsets.zero,
                                          value: controller.selectE,
                                          onChanged: (value) {
                                            controller.onClickSelectE(value);
                                          },
                                          controlAffinity: ListTileControlAffinity
                                              .leading, //  <-- leading Checkbox
                                        ),
                                      ),
                                      Expanded(
                                        child: CheckboxListTile(
                                          dense: true,
                                          title: Text("الحقائب",
                                              style: KText_Style_14_R),
                                          contentPadding: EdgeInsets.zero,
                                          value: controller.selectE,
                                          onChanged: (value) {
                                            controller.onClickSelectE(value);
                                          },
                                          controlAffinity: ListTileControlAffinity
                                              .leading, //  <-- leading Checkbox
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CheckboxListTile(
                                          dense: true,
                                          title: Text("شموع",
                                              style: KText_Style_14_R),
                                          contentPadding: EdgeInsets.zero,
                                          value: controller.selectE,
                                          onChanged: (value) {
                                            controller.onClickSelectE(value);
                                          },
                                          controlAffinity: ListTileControlAffinity
                                              .leading, //  <-- leading Checkbox
                                        ),
                                      ),
                                      Expanded(
                                        child: CheckboxListTile(
                                          dense: true,
                                          title: Text("ديكورات",
                                              style: KText_Style_14_R),
                                          contentPadding: EdgeInsets.zero,
                                          value: controller.selectE,
                                          onChanged: (value) {
                                            controller.onClickSelectE(value);
                                          },
                                          controlAffinity: ListTileControlAffinity
                                              .leading, //  <-- leading Checkbox
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CheckboxListTile(
                                          dense: true,
                                          title: Text("طعام",
                                              style: KText_Style_14_R),
                                          contentPadding: EdgeInsets.zero,
                                          value: controller.selectE,
                                          onChanged: (value) {
                                            controller.onClickSelectE(value);
                                          },
                                          controlAffinity: ListTileControlAffinity
                                              .leading, //  <-- leading Checkbox
                                        ),
                                      ),
                                      Expanded(
                                        child: CheckboxListTile(
                                          dense: true,
                                          title: Text("العروض",
                                              style: KText_Style_14_R),
                                          contentPadding: EdgeInsets.zero,
                                          value: controller.selectE,
                                          onChanged: (value) {
                                            controller.onClickSelectE(value);
                                          },
                                          controlAffinity: ListTileControlAffinity
                                              .leading, //  <-- leading Checkbox
                                        ),
                                      )
                                    ],
                                  ),
                                  Text('البائع', style: KText_Style_H_2),
                                  SizedBox(height: 50),
                                  Text('السعر', style: KText_Style_H_2),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'الأقل سعراً',
                                            style: KText_Style_14_R,
                                          ),
                                          SizedBox(width: 5),
                                          Container(
                                            width: 80,
                                            height: 40,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  contentPadding: EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  hintText: "6ريال",
                                                  hintStyle: KText_Style_14_G_1,
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(8)),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xffE4E4E4)))),
                                              keyboardType: TextInputType.phone,
                                              controller:
                                                  controller.phoneController,
                                              onSaved: (value) {
                                                controller.phone = value!;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'الأعلى سعراً',
                                            style: KText_Style_14_R,
                                          ),
                                          SizedBox(width: 5),
                                          Container(
                                            width: 80,
                                            height: 40,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  contentPadding: EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  hintText: "200 ريال",
                                                  hintStyle: KText_Style_14_G_1,
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(8)),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xffE4E4E4)))),
                                              keyboardType: TextInputType.phone,
                                              controller:
                                                  controller.phoneController,
                                              onSaved: (value) {
                                                controller.phone = value!;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Text('المنتجات', style: KText_Style_H_2),
                                  SizedBox(height: 15),
                                  CheckboxListTile(
                                    dense: true,
                                    title: Text("متوفرة حالياً",
                                        style: KText_Style_14_R),
                                    contentPadding: EdgeInsets.zero,
                                    value: controller.selectE,
                                    onChanged: (value) {
                                      controller.onClickSelectE(value);
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    dense: true,
                                    title: Text("تتوفر حسب الطلب",
                                        style: KText_Style_14_R),
                                    contentPadding: EdgeInsets.zero,
                                    value: controller.selectE,
                                    onChanged: (value) {
                                      controller.onClickSelectE(value);
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Custom_Button_2_1(
                                          lable: 'اعادة تعيين',
                                        )),
                                        SizedBox(width: 10),
                                        Expanded(child: Custom_Button_3_1())
                                      ],
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ))),
                    ],
                  ),
                ));
              },
              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: KColor_Main_Primary_5,
                    ),
                    child: Icon(
                      Icons.filter_alt_rounded,
                      color: KColor_Main_Primary_1,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'فلتر',
                    style: KText_Style_H_4,
                  )
                ],
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  backgroundColor: Colors.white,
                  radius: 10,
                  title: 'التصفية حسب',
                  titleStyle: KText_Style_H_2,
                  content: Container(
                      child: GetBuilder<MarkitController>(
                    init: MarkitController(),
                    initState: (_) {},
                    builder: (_) {
                      return Column(
                        children: [
                          RadioListTile(
                              title:
                                  Text('الأعلى سعراً', style: KText_Style_H_2),
                              activeColor: Color(0xff0E263F),
                              contentPadding: EdgeInsets.zero,
                              selected: true,
                              dense: true,
                              value: controller.gender[0],
                              groupValue: controller.select,
                              onChanged: (value) {
                                controller.onClickRadioButton(value);
                              }),
                          RadioListTile(
                              title:
                                  Text('الأقل سعراً', style: KText_Style_H_2),
                              activeColor: Color(0xff0E263F),
                              contentPadding: EdgeInsets.zero,
                              dense: true,
                              value: controller.gender[1],
                              groupValue: controller.select,
                              onChanged: (value) {
                                controller.onClickRadioButton(value);
                              }),
                          RadioListTile(
                              title: Text('تم اضافتها حديثاً',
                                  style: KText_Style_H_2),
                              activeColor: Color(0xff0E263F),
                              contentPadding: EdgeInsets.zero,
                              dense: true,
                              value: controller.gender[2],
                              groupValue: controller.select,
                              onChanged: (value) {
                                controller.onClickRadioButton(value);
                              }),
                          Row(
                            children: [
                              Expanded(
                                  child: Custom_Button_2_1(
                                lable: 'اعادة تعيين',
                              )),
                              SizedBox(width: 10),
                              Expanded(child: Custom_Button_3_1())
                            ],
                          )
                        ],
                      );
                    },
                  )),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: KColor_Main_Primary_5,
                    ),
                    child: Icon(
                      Icons.menu,
                      color: KColor_Main_Primary_1,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'تصفية',
                    style: KText_Style_H_4,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 10),
              Text(
                'محلات الاسر المنتجة',
                style: KText_Style_H_2,
              ),
              Icon(
                CustomIcons.cart,
                size: 18,
                color: KColor_Main_Primary_1,
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 36,
              child: TextField(
                expands: true,
                maxLines: null,
                minLines: null,
                textInputAction: TextInputAction.search,
                style: TextStyle(height: 1),
                //keyboardType: TextInputType.,
                onSubmitted: (valu) {
                  // Get.toNamed(Routes.SEARCH_PAGE, arguments: valu);
                },
                decoration: InputDecoration(
                  hintText: 'ملابس اطفال',
                  prefixIcon: Icon(
                    Icons.search,
                    color: KColor_Text_Main_2,
                    textDirection: TextDirection.rtl,
                  ),
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(color: KColor_InputText_1, fontSize: 14),
                  fillColor: KColor_InputText_2,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
