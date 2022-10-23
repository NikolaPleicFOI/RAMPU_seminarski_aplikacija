import 'package:flutter/material.dart';

class Kartica extends StatelessWidget {
  const Kartica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kartica")),
      body: Center(
        child: Card(
         elevation: 7,
         shadowColor: Colors.indigo,
         child:
          Column(
           mainAxisSize: MainAxisSize.min,
           children: const [
           ListTile(
            title: Text("Ovo je kartica"),
            subtitle: Text("Ovo su sekundarne informacije"),
            )
          ],
        ),
      )),
    );
  }
}
