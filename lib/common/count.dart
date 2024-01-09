import 'package:get/get.dart';

class Controller extends GetxController {
  var articleCount = 1.obs;
  var articleCounts = [1, 2, 3, 4, 5, 6];
  var bottomButtonCount = 4.obs;
  var currentPage = 3.obs;
  increment() => articleCount.value++;
}
