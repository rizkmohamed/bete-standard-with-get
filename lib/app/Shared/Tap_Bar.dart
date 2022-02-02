import 'package:flutter/material.dart';
import 'package:prod_family/app/modules/Login/views/login_1_view.dart';
import 'package:prod_family/app/modules/Register/views/register_1_view.dart';

class CustomTapBar extends StatefulWidget {
  CustomTapBar({Key? key}) : super(key: key);

  @override
  _CustomTapBarState createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          'تسجيل الدخول',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Material(
            color: Colors.white,
            child: Column(
              children: [
                //SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF9F9F9),
                    border: Border(
                        top: BorderSide(width: 1.5, color: Color(0xffF1F1F1)),
                        bottom:
                            BorderSide(width: 1.5, color: Color(0xffF1F1F1))),
                  ),
                  child: TabBar(
                    unselectedLabelColor: Color(0xffB7B7B7),
                    indicatorColor: Colors.transparent,
                    labelStyle: TextStyle(
                        color: Color(0xff0E263F),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Cairo'),
                    unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.normal, fontFamily: 'Cairo'),
                    controller: _tabController,
                    tabs: <Widget>[
                      Tab(
                        text: ('تسجيل الدخول'),
                      ),
                      Tab(
                        text: ('انشاء حساب'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Login1View(),
          Register1View(),
        ],
      ),
    );
  }
}
