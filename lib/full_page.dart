import 'package:flutter/material.dart';
import 'package:information_project/dialog_box.dart';
import 'package:information_project/radio_button.dart';

import 'check_box.dart';
import 'information.dart';

class FullPage extends StatelessWidget{
  FullPage(this.info);
  final textController = TextEditingController();
  final Info info;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Padding(padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Название"),
              Text("Код")
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(info.name,
                    style: Theme.of(context).textTheme.bodyText1),
              ),
              Flexible(
                child: Text(info.code.toString(),
                    style: Theme.of(context).textTheme.bodyText1),
              )
              
            ],
          ),
          Column(
            children: [
              const Text("Text"),
              Text("Text",
                  style: Theme.of(context).textTheme.bodyText1),
              TextField(
                controller: textController,
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Text',
                ),
              )

            ],

          ),
          const RadioButtonElement(),
          const CheckboxElement(),
          ElevatedButton(
              onPressed: () {
                showDialog(context: context,
                builder: (BuildContext context){
                  return DialogBox(title: 'Информация', descriptions: textController.text, text: info.name + ' ' + info.code.toString());
                });
              },
              child: const Text('Show info')
          )
        ],
      ),)

    );

  }

}