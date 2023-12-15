import 'package:flutter/material.dart';
import 'package:list/Sesi4/ListViewApp.dart';
class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Page'),
        ),
         body: Container(
          height: 200,
          margin:EdgeInsets.symmetric(vertical: 20.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:  [
              Container(
                width: 160,
                color: Colors.black,
              ),
              Container(
                width: 160,
                color: const Color.fromARGB(255, 151, 44, 44),
              ),
              Container(
                width: 160,
                color: Colors.blue,
              ),
              Container(
                width: 160,
                color: Colors.orangeAccent,
              ),
              Container(
                width: 160,
                color: Colors.white70,
              ),
            ],
                ),
        ),
      ),
    );
  }
}
