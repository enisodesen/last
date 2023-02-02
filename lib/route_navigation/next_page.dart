import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_examples/route_navigation/route_navigation.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('NEXT PAGE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is "Next Screen"',
              style: TextStyle(fontSize: 26, color: Colors.blueGrey),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () async {
                  // Get.to(const RouteNavigation(), arguments: 'Data from main');

                  Get.to(
                    const RouteNavigation(),
                    //fullscreenDialog: true,
                    // transition: Transition.zoom,
                    // duration: const Duration(seconds: 3),
                    // curve: Curves.bounceInOut,
                  );
                },
                child: const Text('Go Home Page')),
          ],
        ),
      ),
    );
  }
}
