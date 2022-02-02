import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Containers.dart';
import 'package:prod_family/app/Shared/CustomButtons.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/routes/app_pages.dart';
import 'package:prod_family/app/services/custom_icons.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  children: [
                    _Header(),
                    _Carosal(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 280,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              //height: 200,
              decoration: BoxDecoration(
                color: Color(0xffFCFCFC),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            _Product_Header(),
                            _Product_Info_1(),
                            _Colors_Sizes_Counter(),
                          ],
                        ),
                      ),
                      _Seller_Card(),
                      _Product_Desc(),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'التقييمات',
                                  style: KText_Style_14,
                                ),
                                Text(
                                  'المزيد',
                                  style: KText_Style_H_3_2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 170,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _Build_Rivew(),
                                _Build_Rivew(),
                                _Build_Rivew()
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ),
            ),
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
                          Custom_Button_2(),
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

class _Build_Rivew extends StatelessWidget {
  const _Build_Rivew({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Custom_Container(
        height: 150,
        width: 308,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                                blurRadius: 15,
                                //spreadRadius: 0,
                                offset: Offset(0, 5),
                              )
                            ]),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            CustomIcons.person,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'سلامة الياسين',
                            style: KText_Style_FormText,
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: KColor_Main_Primary_1,
                              ),
                              Icon(
                                Icons.star,
                                size: 18,
                                color: KColor_Main_Primary_1,
                              ),
                              Icon(
                                Icons.star,
                                size: 18,
                                color: KColor_Main_Primary_1,
                              ),
                              Icon(
                                Icons.star,
                                size: 18,
                                color: KColor_Main_Primary_1,
                              ),
                              Icon(
                                Icons.star,
                                size: 18,
                                color: KColor_Main_Primary_1,
                              ),
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Color(
                                  0xffD3D3D3,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    '02.Oct.2021',
                    style: KText_Style_H_5_1,
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                'ريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور',
                style: KText_Style_H_3_1,
              )
            ],
          ),
        ));
  }
}

class _Product_Desc extends StatelessWidget {
  const _Product_Desc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'وصف المنتج',
            style: KText_Style_FormText,
          ),
          SizedBox(height: 15),
          Text(
            'ريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور',
            style: KText_Style_H_3_1,
          )
        ],
      ),
    );
  }
}

class _Seller_Card extends StatelessWidget {
  const _Seller_Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Custom_Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(168, 235, 18, 0.06),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.person_outline_rounded,
                        color: KColor_Main_Primary_1,
                        size: 18,
                      ),
                    ),
                    SizedBox(width: 3),
                    Text(
                      'البائع خليفة حماد',
                      style: KText_Style_H_3_1,
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.SELLER_PROFILE);
                  },
                  child: Container(
                    height: 32,
                    width: 98,
                    decoration: BoxDecoration(
                      color: KColor_Main_Primary_1,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 5),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text(
                      'متابعة',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
            //SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'التقييم',
                      style: KText_Style_H_5_1,
                    ),
                    SizedBox(width: 3),
                    Text(
                      '98%',
                      style: KText_Style_H_3,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'عدد المنتجات',
                      style: KText_Style_H_5_1,
                    ),
                    SizedBox(width: 3),
                    Text(
                      '98%',
                      style: KText_Style_H_3,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'المتابعون',
                      style: KText_Style_H_5_1,
                    ),
                    SizedBox(width: 3),
                    Text(
                      '98%',
                      style: KText_Style_H_3,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Colors_Sizes_Counter extends StatelessWidget {
  const _Colors_Sizes_Counter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('الالوان', style: KText_Style_FormText),
        Row(
          children: [
            Colors_Container(
              fillColor: Color(0xff000000),
            ),
            Colors_Container(
              fillColor: Color(0xffFF8456),
            ),
            Colors_Container(
              fillColor: Color(0xff568EFF),
            ),
            Colors_Container(
              fillColor: Color(0xffFF5667),
            ),
          ],
        ),
        Text('المقاس', style: KText_Style_FormText),
        Row(
          children: [
            Sizes_Container(
              lable: 'S',
            ),
            Sizes_Container(
              lable: 'M',
            ),
            Sizes_Container(
              lable: 'L',
            ),
            Sizes_Container()
          ],
        ),
        Text('العدد', style: KText_Style_FormText),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Counter_Container(),
        )
      ],
    );
  }
}

class _Product_Info_1 extends StatelessWidget {
  const _Product_Info_1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(6),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 14,
                color: KColor_Main_Primary_1,
              ),
              SizedBox(width: 10),
              Text(
                '18.0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'ريال',
                style: KText_Style_H_3,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 14,
                color: KColor_Main_Primary_1,
              ),
              SizedBox(width: 10),
              Text(
                'سوف يتم اضافة رسوم الشحن والتوصيل بقيمة 2 ريال',
                style: KText_Style_H_3,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 14,
                color: KColor_Main_Primary_1,
              ),
              SizedBox(width: 10),
              Text(
                'شروط التبديل والارجاع',
                style: KText_Style_H_3,
              )
            ],
          ),
        )
      ],
    );
  }
}

class _Product_Header extends StatelessWidget {
  const _Product_Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'طوق رقبة من اللؤلؤ',
          style: KText_Style_H1,
        ),
        Container(
          height: 20,
          width: 42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '4.8',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.star,
                  size: 10,
                  color: KColor_Main_Primary_1,
                )
              ],
            ),
          ),
        ),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 16,
          ),
        )
      ],
    );
  }
}

class _Carosal extends StatelessWidget {
  const _Carosal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.defaultDialog(
            backgroundColor: Colors.white,
            radius: 10,
            title: '1/5',
            titlePadding: EdgeInsets.only(bottom: 20, top: 0),
            // titleStyle: Get.isDarkMode ? KTextH1D : KTextH1L,
            content: Container(
              child: Text('Images Here'),
            ));
      },
      child: Container(
        height: 200,
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          width: 12.81,
          height: 150.48,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios)),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                CustomIcons.arrow,
                size: 18,
                color: KColor_Main_Primary_1,
              ),
            ),
            SizedBox(width: 30),
            Icon(
              CustomIcons.cart,
              size: 18,
              color: KColor_Main_Primary_1,
            )
          ],
        )
      ],
    );
  }
}
