import 'package:flutter/material.dart';

class PopupExample extends StatefulWidget {
  const PopupExample({super.key});

  @override
  State<PopupExample> createState() => _PopupExampleState();
}

class _PopupExampleState extends State<PopupExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Example'),
        actions: <Widget>[
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return {'Option 1', 'Option 2', 'Option 3'}.map((String choice) {
              return PopupMenuItem<String>(value: choice, child: Text(choice));
            }).toList();
          })
        ],
      ),
      body: Center(
        child: Text('Click the three dost in the top right'),
      ),
    );
  }
}
