import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '信息流加载',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('全部消息'),
        ),
        body: const IndexInfo(),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.home),onPressed: ()=>{},),
              Expanded(
                child: SizedBox(), // 使用 Expanded 来填充空白位置
              ),
              IconButton(icon: Icon(Icons.business),onPressed: ()=>{},),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround, // 均分底部导航栏横向空间
          ),
        ),
      ),
    );
  }
}

class IndexInfo extends StatelessWidget {
  const IndexInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors:[Colors.red,Colors.orange.shade700]), //背景渐变
                borderRadius: BorderRadius.circular(3.0), //3像素圆角
                boxShadow: [ //阴影
                  BoxShadow(
                      color:Colors.black54,
                      offset: Offset(2.0,2.0),
                      blurRadius: 4.0
                  )
                ]
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
              child: Text("Login", style: TextStyle(color: Colors.white),),
            )
        ),
    Expanded(child:
    ListView.builder(
      itemCount: 100, // 列表项的总数
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
    ),
    ],
    );
  }
}
