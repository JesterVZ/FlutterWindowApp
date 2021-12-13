import 'package:flutter/material.dart';
import 'package:information_project/radio_button.dart';

class FullPage extends StatelessWidget{
  const FullPage({Key? key}) : super(key: key);
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
              Text("Text"),
              Text("Text")
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Text",
                  style: Theme.of(context).textTheme.bodyText1),
              Text("Text",
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
          Column(
            children: [
              const Text("Text"),
              Text("Text",
                  style: Theme.of(context).textTheme.bodyText1),
              const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Text',
                ),
              )

            ],

          ),
          const RadioButtonElement()
        ],
      ),)

    );

  }

}