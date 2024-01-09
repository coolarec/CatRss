import 'package:flutter/material.dart';
import './widgets/index.dart';
import 'package:get/get.dart';
import 'common/count.dart';
import './widgets/keep_alive_wrapper.dart';

void main() {
  Get.put(Controller());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.find();

    List<Widget> taplist() {
      List<Widget> tapps = [];
      for (int i = 0; i < c.bottomButtonCount.value; i++) {
        tapps.add(
          const SizedBox(
            width: 40,
            height: 40,
            child: Tab(
              child: Icon(
                Icons.home,
                size: 25,
              ),
            ),
          ),
        );
      }
      return tapps;
    }

    return DefaultTabController(
      length: c.bottomButtonCount.value,
      child: Scaffold(
        body: TabBarView(
          children: List.generate(
            c.bottomButtonCount.value,
            (index) => Center(
              child: KeepAliveWrapper(
                child: IndexInfo(
                  groupId: index,
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: TabBar(
          enableFeedback: false,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: taplist(),
        ),
      ),
    );
  }
}
