import 'package:flutter/material.dart';
import './widgets/index.dart';
import 'package:get/get.dart';
import 'common/count.dart';

void main() {
  runApp(const MyApp());
}

final c = Controller();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
      ),
      home: const Scaffold(
        body: IndexInfo(),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
