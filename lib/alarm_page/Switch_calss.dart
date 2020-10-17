import 'package:flutter/material.dart';
class Switchh extends StatefulWidget {
  @override
  _SwitchhState createState() => _SwitchhState();
}

class _SwitchhState extends State<Switchh> {
  bool _value = true;
  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: (bool value) {
        _onChanged(value);
      },
      value: _value,
      activeColor: Colors.white,
      inactiveThumbColor: Colors.grey,
    );
  }
}