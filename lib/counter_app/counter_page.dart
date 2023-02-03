import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_examples/counter_app/my_controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Counter value: ${_controller.count}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    _controller.decrement();
                  },
                  child: const Icon(
                    Icons.remove,
                    color: Colors.lightBlue,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    _controller.reset();
                  },
                  child: const Icon(
                    Icons.refresh,
                    color: Colors.grey,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    _controller.increment();
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.orange,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
