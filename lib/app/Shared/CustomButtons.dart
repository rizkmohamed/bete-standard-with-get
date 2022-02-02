import 'package:flutter/material.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/services/custom_icons.dart';

class CustomButton_1 extends StatelessWidget {
  CustomButton_1({required this.lable});

  final String lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [KColor_Main_Primary_1, KColor_Main_Secondary_1_1],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.9, 2.6),
          stops: [0.0, 8.2],
        ),
      ),
      child: Center(
          child: Text(
        lable,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 16,
        ),
      )),
    );
  }
}

class Custom_Button_2 extends StatelessWidget {
  const Custom_Button_2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        height: 44,
        decoration: BoxDecoration(
            color: KColor_Main_Primary_1,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('أضف الى السلة', style: KText_Style_14_W),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Icon(
                  CustomIcons.cart,
                  size: 12,
                  color: KColor_Main_Primary_1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Custom_Button_3 extends StatelessWidget {
  const Custom_Button_3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        height: 44,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [KColor_Main_Primary_1, KColor_Main_Secondary_1_1],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.9, 2.9),
              stops: [0.0, 8.2],
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('اشتري الآن', style: KText_Style_14_W),
              SizedBox(width: 10),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Icon(
                  CustomIcons.card,
                  size: 12,
                  color: KColor_Main_Primary_1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton_4 extends StatelessWidget {
  CustomButton_4({required this.lable});

  final String lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Color(0xffFCAF10), Color(0xffFFCA5E)],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.9, 2.6),
          stops: [0.0, 8.2],
        ),
      ),
      child: Center(
          child: Text(
        lable,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 16,
        ),
      )),
    );
  }
}

class Custom_Button_2_1 extends StatelessWidget {
  Custom_Button_2_1({this.height = 38, required this.lable});

  final double height;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
            color: KColor_Main_Primary_1,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(lable, style: KText_Style_14_W),
        ),
      ),
    );
  }
}

class Custom_Button_2_2 extends StatelessWidget {
  const Custom_Button_2_2({required this.lable});

  final String lable;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromRGBO(246, 42, 102, 0.10),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(lable, style: KText_Style_14_Red),
        ),
      ),
    );
  }
}

class Custom_Button_3_1 extends StatelessWidget {
  const Custom_Button_3_1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      height: 38,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [KColor_Main_Primary_1, KColor_Main_Secondary_1_1],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.9, 2.9),
            stops: [0.0, 8.2],
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text('تم', style: KText_Style_14_W),
      ),
    );
  }
}

class CustomButton_4_1 extends StatelessWidget {
  CustomButton_4_1({required this.lable});

  final String lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Color(0xffFCAF10), Color(0xffFFCA5E)],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.9, 2.6),
          stops: [0.0, 8.2],
        ),
      ),
      child: Center(
          child: Text(
        lable,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 16,
        ),
      )),
    );
  }
}
