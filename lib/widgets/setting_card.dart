import 'package:flutter/material.dart';

class SettingTitle extends StatelessWidget {
  const SettingTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.blue, fontFamily: 'stitle', fontSize: 20),
          textAlign: TextAlign.left,
        ));
  }
}

class SettingName extends StatelessWidget {
  SettingName({Key? key, required this.name}) : super(key: key);

  final List name;
  int namecnt() => name.length;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 0.6, color: Colors.black26),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: namecnt() * 50,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: namecnt(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 0,
                          bottom: 0,
                          right: 10,
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: 20,
                          child: Center(
                            child: Text(
                              name[index],
                              style: TextStyle(fontFamily: 'sword'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
