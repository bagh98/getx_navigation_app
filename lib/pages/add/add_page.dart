// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_app/pages/add/add_controller.dart';

class AddPage extends GetView<AddController> {
  int counter = 0;

  AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text('${controller.counter.value}')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Increase"),
                  onPressed: () => controller.increaseCounter()),
            ],
          ),
        ),
      ),
    );
  }
}
