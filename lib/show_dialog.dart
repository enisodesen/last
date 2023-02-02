import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogPage extends StatelessWidget {
  const ShowDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SHOW DIALOG PAGE'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Show Dialog'),
              onPressed: () {
                Get.defaultDialog(
                  title: 'Hello',
                  middleText: 'This is middle text',
                  backgroundColor: Colors.purple.shade200,
                  radius: 24,
                  content: Row(
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(child: Text('Data Loading')),
                    ],
                  ),
                  // textCancel: 'Cancel',
                  // cancelTextColor: Colors.white,
                  // textConfirm: 'Confirm',
                  // confirmTextColor: Colors.white,
                  // onCancel: () {},
                  // onConfirm: () {},
                  // buttonColor: Colors.black,

                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Go Back')),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Action')),
                  ],
                  // barrierDismissible: false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
