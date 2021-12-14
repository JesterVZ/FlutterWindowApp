import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxElement extends StatefulWidget{
  const CheckboxElement({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CheckboxElement();
}

class _CheckboxElement extends State<CheckboxElement>{
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text("Text"),
      value: checkedValue,
      onChanged: (bool? value) {
        setState(() {
          checkedValue = value!;
          if(value){
            
          }
        });
      },
      controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
    );
  }

}