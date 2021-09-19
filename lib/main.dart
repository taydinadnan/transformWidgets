import 'package:flutter/material.dart';
import 'package:ui_with_flutter/UI/stack.dart';
import 'package:ui_with_flutter/transform/transforms.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Transform Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(body: TransformDemo()
      //StackWidge()
      //   FrontToBack(
      //   urlFront: 'assets/1.png',
      //   urlBack: 'assets/1.png',
      // ),

      );
}
