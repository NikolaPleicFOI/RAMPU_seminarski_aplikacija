import 'package:flutter/material.dart';

class Resetke extends StatelessWidget {
  const Resetke({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Resetke")),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(50, (rb) {
          return Card(
            child: Center(child:ListTile(
              title: Center (child:Text("Kartica broj $rb")),
            ),
          ));
        }),
      ),
    );
  }
}
