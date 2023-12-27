import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;

  void onAddClicked() {
    setState(() {
      // State 클래스에게 데이터가 변경됐다고 알리는 함수
      count++;
    });
  }

  void onMinusClicked() {
    setState(() {
      // State 클래스에게 데이터가 변경됐다고 알리는 함수
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '$count',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: onMinusClicked,
                    icon: const Icon(Icons.remove_circle_rounded),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: onAddClicked,
                    icon: const Icon(Icons.add_circle_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
