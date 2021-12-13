import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import 'full_page.dart';

class ScrollBarWidget extends StatefulWidget{
  const ScrollBarWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ScrollBarWidget();

}

class _ScrollBarWidget extends State<ScrollBarWidget>{
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      controller: _firstController,
      child: ListView.builder(
        controller: _firstController,
        itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                log('clicked index: $index');
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FullPage()));
              },
              /*
              margin: const EdgeInsets.only(bottom: 10.0, top: 20.0, left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              padding: const EdgeInsets.all(32.32),*/
              child: Container(
                margin: const EdgeInsets.only(bottom: 10.0, top: 20.0, left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))
                ),
                padding: const EdgeInsets.all(32.32),
                child: Center(
                  child: Text("Index: $index"),
                ),
              )

            );
          }),
      );

  }

}