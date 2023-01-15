import 'package:flutter/material.dart';
import 'package:my_first_layouts_1/widgets/buttonSection.dart';
import 'package:my_first_layouts_1/widgets/callWidget.dart';
import 'package:my_first_layouts_1/widgets/textSection.dart';
import 'widgets/nearmeWidget.dart';
import 'widgets/titleSection.dart';
import 'widgets/ButtonColumn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection(),
            buttonSection(),
            textSection(),
          ],
        ),
      ),
    );
  }
}
