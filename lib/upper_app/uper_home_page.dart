// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_examples/upper_app/my_controller.dart';

class UpperHome extends StatelessWidget {
  UpperHome({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('State Managament'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'My name is ${myController.student.value.name}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  myController.convetToUpperCase();
                },
                child: const Text('Upper')),
          ],
        ),
      ),
    );
  }
}
