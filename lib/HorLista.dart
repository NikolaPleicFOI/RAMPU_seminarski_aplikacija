import 'package:flutter/material.dart';

class HorizontalnaLista extends StatelessWidget {
  const HorizontalnaLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Horizontalna lista")),
        body: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
            Container(
                width: 200,
                margin: const EdgeInsets.only(left: 30),
                color: Colors.red),
            Container(
                width: 200,
                margin: const EdgeInsets.only(left: 30),
                color: Colors.green),
            Container(
                width: 200,
                margin: const EdgeInsets.only(left: 30),
                color: Colors.blue),
            Container(
                width: 200,
                margin: const EdgeInsets.only(left: 30),
                color: Colors.black),
            ],
          ),
        ));
  }
}
