import 'package:flutter/material.dart';
import 'package:prod_family/app/Shared/Colors.dart';

class Custom_ProgressIndicator extends StatelessWidget {
  const Custom_ProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: KColor_Main_Primary_1,
    ));
  }
}
