import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common/count.dart';
import '../routes/setting.dart';
import 'article_card.dart';

Controller c = Get.find();

class IndexInfo extends StatelessWidget {
  const IndexInfo({Key? key, required this.groupId}) : super(key: key);
  final int groupId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  '你好👌',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black54),
                ),
                background: GestureDetector(
                  onLongPress: () {
                    Get.to(
                      const NewRoute(),
                      transition: Transition.downToUp,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                  onTap: () => c.increment(),
                  child: const Center(
                    child: BlueGradientProgress(finish: 1.5, all: 2),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: IndexArticles(groupId: groupId),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlueGradientProgress extends StatelessWidget {
  const BlueGradientProgress({
    Key? key,
    required this.finish,
    required this.all,
  }) : super(key: key);

  final double finish; // 完成进度
  final double all; // 总进度

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: CustomPaint(
        painter: ProgressPainter(finish: finish, all: all),
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  ProgressPainter({
    required this.finish,
    required this.all,
  });

  final double finish; // 完成进度
  final double all; // 总进度

  @override
  void paint(Canvas canvas, Size size) {
    final Paint bgPaint = Paint()
      ..color = Colors.grey.withOpacity(0.2)
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke;

    final Paint progressPaint = Paint()
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final Gradient gradient = LinearGradient(
      colors: [Colors.blue.shade50, Colors.blue.shade900],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final double sweepAngle = 2 * 3.14 * (finish / all);

    final Rect rect = Rect.fromCircle(
        center: size.center(Offset.zero), radius: size.width / 2);

    progressPaint.shader = gradient.createShader(rect);

    canvas.drawArc(rect, -1.57, sweepAngle, false, progressPaint);
    canvas.drawCircle(size.center(Offset.zero), size.width / 2, bgPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class IndexArticles extends StatelessWidget {
  final int groupId;
  const IndexArticles({Key? key, required this.groupId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scrollbar(
        child: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
            margin: const EdgeInsets.all(30.0),
            padding: const EdgeInsets.all(10.0),
            child: ArticleCard(groupId: groupId)),
      ),
    );
  }
}
