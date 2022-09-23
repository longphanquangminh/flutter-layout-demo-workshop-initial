import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Oeschinen Lake Camground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ), // TextStyle
                ), // Text
              ), // Container
              const Text(
                'Kandersteg', 'Switzerland',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ), // TextStyle
              ) // Text
            ],
          ), // Column
          ), // Expanded
          Icon(
            Icon.star,
            color: Colors.red[500],
          ), // Icon
          const Text('41'),
        ],
      ), // Row
    ); // Container

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight:FontWeight.w400,
                color: color,
              ), // TextStyle
            ), // Text
          ) // Container
        ],
      ); // Column
    }

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
        _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Flutter transforms the app development process. Build, test,'
        ' and deploy beautiful mobile, web, desktop, and embedded '
        'apps from a single codebase.' 'Flutter code compiles to ARM or Intel'
        'machine code as well as JavaScript, for fast performance'
        'on any device.',
        softWrap:true,
        textAlign: TextAlign.justify,
      ), // Text
    ); // Padding

    Widget imageSection = (
      Image.asset(
        'images/lake.jpeg',
      )
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
