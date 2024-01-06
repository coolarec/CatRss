import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';

class IndexInfo extends StatelessWidget {
  IndexInfo({Key? key}) : super(key: key);
  final Controller c = Get.find<Controller>(); // 获取 Controller 实例

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange.shade700]), //背景渐变
                borderRadius: BorderRadius.circular(3.0), //3像素圆角
                boxShadow: const [
                  //阴影
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0)
                ]),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            )),
        Expanded(
            child: Obx(
          () => ListView.builder(
            itemCount: c.count.value, // 列表项的总数
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text('文章 $index'),
                  subtitle: const Text(
                    'ListTile 通常用于在Flutter 中填充ListView。在这篇文章中，我将用可视化的例子来说明所有的参数。将图像或图标添加到列表的开头。',
                  ),
                  enabled: true,
                ),
              );
            },
          ),
        )),
      ],
    );
  }
}
