// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStoragePage extends StatelessWidget {
  GetStoragePage({super.key});

  var emailController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetStorage & Email Validation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if (GetUtils.isEmail(emailController.text)) {
                    storage.write('email', emailController.text);
                  } else {
                    Get.snackbar(
                        'Invalid Email', 'Provide Email in valid format',
                        snackPosition: SnackPosition.BOTTOM);
                  }
                },
                child: const Text('Write')),
            ElevatedButton(
                onPressed: () {
                  print('The email is: ${storage.read('email')}');
                },
                child: const Text('Read')),
          ],
        ),
      ),
    );
  }
}
