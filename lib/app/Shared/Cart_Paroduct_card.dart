import 'package:flutter/material.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/Containers.dart';

class Cart_Product extends StatelessWidget {
  const Cart_Product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Product_Container(),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'طوق عنق من اللؤلؤ',
                    style: TextStyle(
                      color: KColor_Text_Main_2,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: KColor_Main_Primary_1,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'شارع الميدان ، جدة',
                        style: TextStyle(
                          color: KColor_Text_Main_2,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: KColor_Main_Primary_1,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'السعر 18.00 ريال',
                        style: TextStyle(
                          color: KColor_Text_Main_2,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: KColor_Main_Primary_1,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'رسوم التوصيل 18.00 ريال',
                        style: TextStyle(
                          color: KColor_Text_Main_2,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 25),
                      Text('العدد'),
                      SizedBox(width: 30),
                      Row(
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
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('المجموع الكلي'),
              SizedBox(width: 15),
              Text(
                '90.00',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5),
              Text('ريال'),
            ],
          )
        ],
      ),
    );
  }
}
