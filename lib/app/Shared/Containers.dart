import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/routes/app_pages.dart';

class Build_Product extends StatelessWidget {
  const Build_Product({
    this.hasOffer = false,
    this.Mhight = 126,
    this.Mwidth = 130,
    this.Fhight = 22,
    this.Fwidth = 22,
  });

  final bool hasOffer;
  final double Mhight;
  final double Mwidth;
  final double Fhight;
  final double Fwidth;
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
                    height: Mhight,
                    width: Mwidth,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child:
                        Favorit_Button_Container(height: Fhight, width: Fwidth),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text(
              'جاكيتات خامة ممتازة',
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
                if (hasOffer == true)
                  Text(
                    '600 ريال',
                    style: KText_Style_H_3_G,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Product_Container extends StatelessWidget {
  const Product_Container({this.height = 117, this.width = 117});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          width: 12.81,
          height: 40.48,
        ),
      ),
    );
  }
}

//
class Favorit_Button_Container extends StatelessWidget {
  const Favorit_Button_Container({this.height = 22, this.width = 22});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
        color: Color(0xffF3F3F3),
      ),
      child: Icon(
        Icons.favorite,
        size: 10,
        color: Color(0xffD6D6D6),
      ),
    );
  }
}

class Colors_Container extends StatelessWidget {
  const Colors_Container(
      {this.height = 15,
      this.width = 15,
      this.radios = 50,
      this.fillColor = Colors.red});

  final double height;
  final double width;
  final double radios;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(radios),
          color: fillColor,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              offset: Offset(0, 5),
              blurRadius: 15,
            ),
          ],
        ),
        // child: Container(
        //   padding: EdgeInsets.all(10),
        //   child: SvgPicture.asset(
        //     'assets/images/logo.svg',
        //     width: 12.81,
        //     height: 40.48,
        //   ),
        // ),
      ),
    );
  }
}

class Sizes_Container extends StatelessWidget {
  const Sizes_Container(
      {this.height = 23,
      this.width = 22,
      this.radios = 4,
      this.fillColor = Colors.white,
      this.lable = 'XL'});

  final double height;
  final double width;
  final double radios;
  final Color fillColor;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE4E4E4), width: 1),
            borderRadius: BorderRadius.circular(radios),
            color: fillColor,
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
            lable,
            style: KText_Style_H_3,
          ))),
    );
  }
}

class Counter_Container extends StatelessWidget {
  const Counter_Container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 23.79,
          width: 23.79,
          decoration: BoxDecoration(
              color: Color.fromRGBO(2, 138, 70, 0.3),
              borderRadius: BorderRadius.circular(6)),
          child: Center(
              child: Icon(
            Icons.add,
            color: Color(0xff028A46),
          )),
        ),
        SizedBox(width: 10),
        Text('2'),
        SizedBox(width: 10),
        Container(
          //alignment: Alignment.center,
          height: 23.79,
          width: 23.79,
          decoration: BoxDecoration(
              color: Color.fromRGBO(254, 63, 96, 0.2),
              borderRadius: BorderRadius.circular(6)),
          child: Center(
            widthFactor: 12,
            heightFactor: 12,
            child: Icon(
              Icons.minimize,
              color: Color(0xffFE3F60),
              //size: 18,
            ),
          ),
        ),
      ],
    );
  }
}

class Custom_Container extends StatelessWidget {
  const Custom_Container(
      {this.height = 92,
      this.width = double.infinity,
      this.radios = 8,
      this.fillColor = Colors.white,
      required this.child});

  final double height;
  final double width;
  final double radios;
  final Color fillColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(radios),
          color: fillColor,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              offset: Offset(0, 5),
              blurRadius: 15,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

// Grey Divider for buttom Sheets
class Sheet_Divider extends StatelessWidget {
  const Sheet_Divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 40,
          height: 5,
          decoration: BoxDecoration(
              color: Color(0xffE3E6E7),
              borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }
}
