import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Page'),
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text(
                'Masa',
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Phone',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
