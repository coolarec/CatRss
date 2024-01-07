import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common/count.dart';

final Controller c = Controller();

class IndexInfo extends StatelessWidget {
  const IndexInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              pinned: true,
              expandedHeight: 500,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  '你好👌',
                  textAlign: TextAlign.center,
                ),
                background: Center(
                  child: Icon(
                    Icons.navigation,
                    size: 300,
                  ),
                ),
              ),
            ),
          ];
        },
        body: const Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    IndexArticles(),
                    Text(
                      '已经到头了哦',
                      style: TextStyle(height: 5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IndexArticles extends StatelessWidget {
  const IndexArticles({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scrollbar(
        child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            child: const ArticleCard()),
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: c.count.value,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white54.withOpacity(0.1),
            ),
            margin: const EdgeInsets.all(5),
            child: ListTile(
              title: Text('你好 $index'),
              subtitle: const Text(
                'ListTile 通常用于在Flutter 中填充ListView。在这篇文章中，我将用可视化的例子来说明所有的参数。将图像或图标添加到列表的开头。',
              ),
              enabled: true,
            ),
          );
        },
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 80,
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      padding: const EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => {c.increment()},
            ),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => {c.increment()},
            ),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => {c.increment()},
            ),
          ),
        ],
      ),
    );
  }
}
