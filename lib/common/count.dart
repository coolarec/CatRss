import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 1.obs;
  increment() => count.value++;
}
