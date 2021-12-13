import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtonElement extends StatefulWidget{
  const RadioButtonElement({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RadioButtonElement();

}


class _RadioButtonElement extends State<RadioButtonElement>{
  late int _changedValue;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Radio button'),
      leading: Radio(
      value: 1,
      activeColor: Color(0xFF6200EE), 
        onChanged: (int? value) { _changedValue = value }, groupValue: null,

    ),
    );
  }

}