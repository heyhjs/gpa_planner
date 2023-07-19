import 'package:flutter/material.dart';

class GpaCreater extends StatefulWidget {
  const GpaCreater({super.key});

  @override
  State<GpaCreater> createState() => _GpaCreaterState();
}

class _GpaCreaterState extends State<GpaCreater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GPA Creater - GOAL'),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.add),
        iconSize: 40,
        onPressed: () {
          print('hi');
        },
      ),
    );
  }
}
