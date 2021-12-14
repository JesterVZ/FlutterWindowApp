import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtonElement extends StatefulWidget{
  const RadioButtonElement({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RadioButtonElement();

}

enum States {green, blue}

class _RadioButtonElement extends State<RadioButtonElement>{
  late int _changedValue;
  States _states = States.green;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Зеленый'),
          leading: Radio<States>(
              value: States.green,
              groupValue: _states,
              onChanged: (States? value){
                setState((){
                  _states = value!;
                });
              }
          ),
        ),
        ListTile(
          title: const Text('Синий'),
          leading: Radio<States>(
              value: States.blue,
              groupValue: _states,
              onChanged: (States? value){
                setState((){
                  _states = value!;
                });
              }
          ),
        )
      ],

    );


  }

}