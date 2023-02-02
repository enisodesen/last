import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SNACK BAR PAGE'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Get.snackbar('Hello', 'I am at the top of the page',
                    borderColor: Colors.black, borderWidth: 2);
              },
              color: Colors.blue,
              child: const Text('Snack Bar 1'),
            ),
            MaterialButton(
              onPressed: () {
                Get.snackbar(
                  'Hi, again',
                  'I am at the bottom of the page',
                  snackPosition: SnackPosition.BOTTOM,
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.black38,
                  backgroundColor: Colors.black12,
                  borderRadius: 12,
                  //maxWidth: 200,
                  forwardAnimationCurve: Curves.bounceInOut,
                  animationDuration: const Duration(seconds: 2),
                  icon: const Icon(Icons.send),
                  overlayColor: Colors.grey,
                  overlayBlur: 3,
                );
              },
              color: Colors.orange,
              child: const Text('Snack Bar 2'),
            )
          ],
        ),
      ),
    );
  }
}
