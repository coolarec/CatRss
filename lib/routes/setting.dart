import 'package:flutter/material.dart';
import '../widgets/setting_card.dart';

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        icon: const Icon(Icons.arrow_back),
        iconSize: 40,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      body: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.shade100,
              child: const Center(
                child: Text(
                  'Mystic Land!',
                  style: TextStyle(fontSize: 60, fontFamily: 'harry'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 900,
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const SettingContent(),
            ),
          ),
        ],
      ),
    );
  }
}

//设置主窗口
class SettingContent extends StatelessWidget {
  const SettingContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SettingTitle(title: '订阅源'),
        SettingName(name: ['配置rss源', '添加', '删除']),
        SettingTitle(title: '关于'),
        SettingName(name: ['使用提醒', '关于', '软件版本'])
      ],
    );
  }
}
