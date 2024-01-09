import 'package:catrss/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({Key? key, required this.groupId}) : super(key: key);
  final int groupId;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (c.currentPage.value == 0) {
          return const Text('没有文章了哦');
        } else {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: c.articleCounts[groupId],
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white70.withOpacity(0.1),
                ),
                child: ListTile(
                  title: Text('你好 $index'),
                  subtitle: const Text(
                    'ListTile 通常用于在Flutter 中填充ListView。在这篇文章中，我将用可视化的例子来说明所有的参数。将图像或图标添加到列表的开头。',
                  ),
                  enabled: true,
                ),
              );
            },
          );
        }
      },
    );
  }
}
