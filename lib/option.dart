import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  String? selesctedOption = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text("Option 1"),
            leading: Radio<String>(
              value: 'Option 1',
              groupValue: selesctedOption,
              onChanged: (String? value) {
                setState(() {
                  selesctedOption = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Option 2"),
            leading: Radio<String>(
              value: 'Option 2',
              groupValue: selesctedOption,
              onChanged: (String? value) {
                setState(() {
                  selesctedOption = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Option 3"),
            leading: Radio<String>(
              value: 'Option 3',
              groupValue: selesctedOption,
              onChanged: (String? value) {
                setState(() {
                  selesctedOption = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Selected:$selesctedOption",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
