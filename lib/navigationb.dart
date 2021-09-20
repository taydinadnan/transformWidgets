import 'package:flutter/material.dart';
import 'package:ui_with_flutter/UI/stack.dart';
import 'package:ui_with_flutter/transform/fornt_to_back.dart';
import 'package:ui_with_flutter/transform/transforms.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final tabs = [
    const Center(child: TransformDemo()),
    const Center(
        child: FrontToBack(
            urlFront: 'assets/images/1.png', urlBack: 'assets/images/2.png')),
    const Center(child: StackWidge()),
    const Center(
        child: Text(
      'Work done will appear in this tab',
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Bottom Navigation Bar',
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt),
            title: Text('Notes'),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            title: Text('To-do-list'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_all),
            title: Text('Work Done'),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
