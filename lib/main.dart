import 'package:flutter/material.dart';
import './widgets/index.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class Controller extends GetxController {
  var count = 1.obs;
  increment() => count++;
}

final c = Controller();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return GetMaterialApp(
      title: '信息流加载',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('全部消息'),
        ),
        body: IndexInfo(),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => {c.increment()},
              ),
              IconButton(
                icon: const Icon(Icons.business),
                onPressed: () => {},
              ),
              IconButton(
                icon: const Icon(Icons.business),
                onPressed: () => {},
              ),
            ], // 均分底部导航栏横向空间
          ),
        ),
      ),
    );
  }
}
