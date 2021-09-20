import 'package:flutter/material.dart';
import 'package:ui_with_flutter/navigationb.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Transform Example';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  // ignore: use_key_in_widget_constructors
  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => const Scaffold(body: BottomNavigation()
      //TransformDemo()
      //StackWidge()
      //   FrontToBack(
      //   urlFront: 'assets/1.png',
      //   urlBack: 'assets/1.png',
      // ),

      );
}
