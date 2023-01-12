import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../second/views/second_view.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.to(() => SecondView());
        }),
        appBar: AppBar(
          title: const Text('CounterView'),
          centerTitle: true,
        ),
        body: Container(
          child: Row(
            children: [
              ElevatedButton(
                onPressed: controller.increment,
                child: Text("Increase"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("${controller.count.value}"),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: controller.decrement,
                child: Text("Decrease"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
