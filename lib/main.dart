import 'package:flutter/material.dart';
import 'package:testexample/custom_dropdown.dart';
import 'package:testexample/custom_text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Dropdown Example'),
        ),
        body: Center(
          child: CustomDropdownExample(),
        ),
      ),
    );
  }
}

class CustomDropdownExample extends StatefulWidget {
  @override
  _CustomDropdownExampleState createState() => _CustomDropdownExampleState();
}

class _CustomDropdownExampleState extends State<CustomDropdownExample> {
  String selectedColor =
      "Red"; // Setting a default value that matches one of the DropdownMenuItem values

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: CustomTextField(
            labelText: 'Password',
            borderRadius: 20,
            focusedFieldColor: Colors.green,
            prefixIcon: Icons.remove_red_eye,
            hideText: true,
            hintText: "Hint",
            hintStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
