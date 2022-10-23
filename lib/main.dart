import 'package:flutter/material.dart';
import 'DugaLista.dart';
import 'HorLista.dart';
import 'Kartica.dart';
import 'Resetke.dart';
import 'Tablica.dart';

void main() {
  runApp(const MaterialApp(
    home: Pocetna(),
  ));
}

class ElementListe extends ListTile {
  final Text ime;
  final Widget odrediste;

  const ElementListe(this.ime, this.odrediste, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: ElevatedButton(
        child: ime,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => odrediste),
          );
        },
      ),
    );
  }
}

class Pocetna extends StatelessWidget {
  const Pocetna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Početna stranica - statička lista")),
        body: ListView(children: <Widget>[
          ElementListe(Text("Horizontalna lista"), HorizontalnaLista()),
          ElementListe(Text("Duga Lista"), DugaLista()),
          ElementListe(Text("Tablica"), Tablica()),
          ElementListe(Text("Kartica"), Kartica()),
          ElementListe(Text("Resetke"), Resetke()),
        ]));
  }
}
