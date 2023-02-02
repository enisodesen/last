import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BOTTOM SHEET AND DYNAMIC THEME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    SizedBox(
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                    // barrierColor: Colors.blue.shade100,
                    backgroundColor: Colors.blue.shade200,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),

                    //enableDrag: false,
                  );
                },
                child: const Text('Bottom Sheet'))
          ],
        ),
      ),
    );
  }
}
