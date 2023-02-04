import 'package:flutter/material.dart';
import 'package:mediaqueryss/widgets/content.dart';
import 'package:mediaqueryss/widgets/sidebar.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Clase 1 / 2'),
          ),
          body: Row(
            children: [if (isTablet(context)) const SideBar(), const Content()],
          )),
    );
  }
}
