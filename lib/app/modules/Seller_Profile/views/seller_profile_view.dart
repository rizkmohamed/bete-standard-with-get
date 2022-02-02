import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Containers.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/services/custom_icons.dart';

import '../controllers/seller_profile_controller.dart';

class SellerProfileView extends GetView<SellerProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          _Profile_Photos(),
          _Location(),
          _Share(),
          _About(),
          _Search(),
          Container(
            height: Get.height - 300,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: GridView(
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 1 / 1.37,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0),
                children: [
                  Build_Product(
                    Mhight: 148,
                    Mwidth: 156,
                  ),
                  Build_Product(
                    Mhight: 148,
                    Mwidth: 156,
                  ),
                  Build_Product(
                    Mhight: 148,
                    Mwidth: 156,
                  ),
                  Build_Product(
                    Mhight: 148,
                    Mwidth: 156,
                  ),
                  Build_Product(
                    Mhight: 148,
                    Mwidth: 156,
                  ),
                  Build_Product(
                    Mhight: 148,
                    Mwidth: 156,
                  ),
                  Build_Product(
                    Mhight: 148,
                    Mwidth: 156,
                  ),
                  Build_Product(
                    Mhight: 148,
                    Mwidth: 156,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class _Search extends StatelessWidget {
  const _Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('جميع المنتجات', style: KText_Style_FormText),
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
                  hintText: 'بحث'.tr,
                  prefixIcon: Icon(
                    Icons.search,
                    color: KColor_Text_Main_2,
                    textDirection: TextDirection.rtl,
                  ),
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(color: KColor_InputText_1),
                  fillColor: Color.fromRGBO(235, 235, 235, 0.8),
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

class _About extends StatelessWidget {
  const _About({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('نبذة عن المتجر', style: KText_Style_FormText),
          SizedBox(height: 10),
          Text(
              'ريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور',
              style: KText_Style_H_3_1)
        ],
      ),
    );
  }
}

class _Share extends StatelessWidget {
  const _Share({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(5),
        height: 52,
        color: KColor_InputText_2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('المنتجات', style: KText_Style_Product_L2),
                Text('230', style: KText_Style_FormText)
              ],
            ),
            Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('مشاركة', style: KText_Style_Product_L2),
                Icon(
                  CustomIcons.arrow,
                  size: 12,
                  color: Color(0xffFCAF10),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Location extends StatelessWidget {
  const _Location({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'اسم المتجر',
          style: KText_Style_H1,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(255, 217, 51, 0.1)),
                child: Icon(
                  Icons.location_on_outlined,
                  color: Color(0xffFCAF10),
                  size: 18,
                )),
            SizedBox(width: 5),
            Text(
              'الرياض',
              style: KText_Style_H_3,
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('التقييم', style: KText_Style_H_3),
            SizedBox(width: 5),
            Text('100%', style: KText_Style_H_3)
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 16,
              color: KColor_Icons_Orang,
            ),
            SizedBox(width: 3),
            Icon(
              Icons.star,
              size: 16,
              color: KColor_Icons_Orang,
            ),
            SizedBox(width: 3),
            Icon(
              Icons.star,
              size: 16,
              color: KColor_Icons_Orang,
            ),
            SizedBox(width: 3),
            Icon(
              Icons.star,
              size: 16,
              color: KColor_Icons_Orang,
            ),
            SizedBox(width: 3),
          ],
        )
      ],
    );
  }
}

class _Profile_Photos extends StatelessWidget {
  const _Profile_Photos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            height: 146,
            color: Colors.grey,
          ),
          Positioned(
              top: 5,
              right: 5,
              child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios))),
          Positioned.fill(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white, width: 2),
                gradient: LinearGradient(
                  colors: [Color(0xffF8DB5E), Color(0xffF62A66)],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.9, 1),
                  stops: [0.0, 8.2],
                ),
              ),
              child: CircleAvatar(
                radius: 27,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 34,
                  child: Icon(
                    CustomIcons.person,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ),
          )),
          Positioned(
            bottom: 8,
            right: 130,
            child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Icon(
                  Icons.check_circle,
                  size: 21,
                  color: Color(0xff2E82FF),
                )),
          )
        ],
      ),
    );
  }
}
