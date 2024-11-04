import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: isCheck,
                onChanged: (bool? value) {
                  setState(() {
                    isCheck = value ?? false;
                  });
                }),
            Text(
              isCheck ? 'checked' : 'unchecked',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
