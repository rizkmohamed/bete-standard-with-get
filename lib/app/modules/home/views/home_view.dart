import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Containers.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/data/Services/Auth/LogIn/Login_Stat_Controller.dart';
import 'package:prod_family/app/routes/app_pages.dart';
import 'package:prod_family/app/services/custom_icons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _Header(),
            Divider(),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    _Adds(),
                    // Offers Section
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'العروض',
                                style: KText_Style_FormText,
                              ),
                              Text(
                                'المزيد',
                                style: KText_Style_H_3,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 230,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Build_Product(hasOffer: true),
                              Build_Product(hasOffer: true),
                              Build_Product(hasOffer: true),
                              Build_Product(hasOffer: true),
                            ],
                          ),
                        ),
                        _Adds(),
                      ],
                    ),
                    // New Products Section
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'جديد',
                                style: KText_Style_FormText,
                              ),
                              Text(
                                'المزيد',
                                style: KText_Style_H_3,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 230,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Build_Product(),
                              Build_Product(),
                              Build_Product(),
                              Build_Product(),
                            ],
                          ),
                        ),
                        _Adds(),
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class _Adds extends StatelessWidget {
  const _Adds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: KColor_InputText_2,
      child: Center(
        child: Text('إعلان'),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final loginStat = Get.put(LoginStateController());

  _Header({
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
              if (loginStat.loginState == 'Login')
                Text(
                  'مرحباً' + ' ' + GetStorage().read('name'),
                  style: KText_Style_UserName,
                ),
              if (loginStat.loginState != 'Login')
                Text(
                  'مرحباً بك',
                  style: KText_Style_UserName,
                ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.CART);
                },
                child: Icon(
                  CustomIcons.cart,
                  size: 18,
                  color: KColor_Main_Primary_1,
                ),
              ),
            ],
          ),
          Text(
            'تسوق من مكان واحد',
            style: KText_Style_H1,
          ),
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
                  hintText: 'ملابس اطفال'.tr,
                  prefixIcon: Icon(
                    Icons.search,
                    color: KColor_Text_Main_2,
                    textDirection: TextDirection.rtl,
                  ),
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(color: KColor_InputText_1),
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
