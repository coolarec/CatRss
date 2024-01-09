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
            top: 150,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              child: const SettingContent(),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingContent extends StatelessWidget {
  const SettingContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SettingTitle(title: "你好"),
      ],
    );
  }
}
