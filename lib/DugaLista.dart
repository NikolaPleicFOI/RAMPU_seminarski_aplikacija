import 'package:flutter/material.dart';

class DugaLista extends StatelessWidget {
  DugaLista({super.key});

  List<Text> elementi = List<Text>.generate(100, (br)=>Text("element broj $br"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Duga lista")
      ),
      body:ListView.builder(
        itemCount: elementi.length,
        prototypeItem: Row(
          children: [elementi.first],
        ),
        itemBuilder: (context, rb){
          return Row(
              children: [elementi.first]
          );
        },
      )
    );
  }
}
