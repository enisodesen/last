import 'package:get/get.dart';
import 'package:new_examples/upper_app/student.dart';

class MyController extends GetxController {
  var student = Student(name: 'Ali', age: 45).obs;

  void convetToUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }
}
