import 'package:flutter/material.dart';
import 'package:indicator_bottom_navigationbar/indicator_bottom_navigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int currentIndex = 0;

  static List<IconLabel> iconLabels = [
    IconLabel(Icons.home, "Home"),
    IconLabel(Icons.shopping_bag, "Shopping"),
    IconLabel(Icons.money, "Money"),
    IconLabel(Icons.more_horiz_outlined, "More"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: IndicatorBottomNavigationbar(
        currentIndex: currentIndex,
        onTap: (index){
          currentIndex = index;
          setState(() {});
        },
        iconLabels: iconLabels,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[700]!,
        backgroundColor: Colors.black,
        indicatorHeight: 2.5,
        indicatorWidth: 70,
      ),
    );
  }
}
