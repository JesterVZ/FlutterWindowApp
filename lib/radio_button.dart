import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButtonElement extends StatefulWidget{
  const RadioButtonElement({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RadioButtonElement();

}

enum States {first, second}

class _RadioButtonElement extends State<RadioButtonElement>{
  late int _changedValue;
  States _states = States.first;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Radio button'),
          leading: Radio<States>(
              value: States.first,
              groupValue: _states,
              onChanged: (States? value){
                setState((){
                  _states = value!;
                });
              }
          ),
        ),
        ListTile(
          title: const Text('Radio button'),
          leading: Radio<States>(
              value: States.second,
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