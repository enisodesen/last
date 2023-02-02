import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_examples/route_navigation/next_page.dart';

class RouteNavigation extends StatelessWidget {
  const RouteNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ROUTE NAVIGATION'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is "Home Screen"',
              style: TextStyle(fontSize: 26, color: Colors.blueGrey),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(const NextPage());
                },
                child: const Text(' Next Screen ')),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Back to Main')),
            const SizedBox(
              height: 10,
            ),
            // Text(
            //   '${Get.arguments}',
            //   style: const TextStyle(color: Colors.green, fontSize: 20),
            // ),
          ],
        ),
      ),
    );
  }
}
