import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/modules/Markit/controllers/markit_controller.dart';
import 'package:prod_family/app/modules/Markit/views/Show_Cats.dart';
import 'package:prod_family/app/modules/Markit/views/markit_view.dart';
import 'package:prod_family/app/services/custom_icons.dart';

class MarketTapBar extends StatefulWidget {
  //final controller = Get.put(MarkitController());

  MarketTapBar({Key? key}) : super(key: key);

  @override
  _MarketTapBarState createState() => _MarketTapBarState();
}

class _MarketTapBarState extends State<MarketTapBar>
    with TickerProviderStateMixin {
  final controller = Get.put(MarkitController());
  TabController? _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: controller.CategoriesListL.value, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MarkitController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              CustomIcons.cart,
              size: 18,
              color: KColor_Main_Primary_1,
            ),
          ),
        ],
        elevation: 0,
        title: Text(
          'محلات الاسر المنتجة',
          style: KText_Style_H_2,
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Material(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 15, right: 15),
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
                        hintStyle:
                            TextStyle(color: KColor_InputText_1, fontSize: 14),
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
                Filtter(),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 246, 249, 0.4),
                  ),
                  child: TabBar(
                    unselectedLabelColor: Color(0xffC1C1C1),
                    indicatorColor: Colors.transparent,
                    labelStyle: TextStyle(
                        color: Color(0xff4A4A4A),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Cairo'),
                    unselectedLabelStyle: TextStyle(
                        color: Color(0xffC1C1C1),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Cairo'),
                    controller: _tabController,
                    isScrollable: true,
                    tabs:
                        List.generate(controller.categoriesLis.length, (index) {
                      return Tab(
                        text: controller.categoriesLis[index].name,
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: List.generate(controller.categoriesLis.length, (index) {
          return ShowCategorie(
              // lable: controller.categoriesLis[index].id.toString(),
              );
        }),
      ),
    );
  }
}
