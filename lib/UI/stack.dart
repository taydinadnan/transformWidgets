// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackWidge extends StatelessWidget {
  const StackWidge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 350,
          width: 400,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/1.png'),
              Positioned(
                bottom: 10,
                left: 35,
                child: Text(
                  'Adnan Turgay Aydin',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
