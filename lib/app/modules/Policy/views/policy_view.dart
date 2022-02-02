import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../controllers/policy_controller.dart';

// ignore: must_be_immutable
class PolicyView extends GetView<PolicyController> {
  // PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'سياسة الخصوصية',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SlidingUpPanel(
          //controller: _pc,
          minHeight: 200,
          backdropEnabled: true,
          panel: Center(
            child: Text('test'),
          ),
          body: SafeArea(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // _pc.open();
                  },
                  child: Center(
                    child: Text('test'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
