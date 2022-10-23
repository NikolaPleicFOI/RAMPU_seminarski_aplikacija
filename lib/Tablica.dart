import 'package:flutter/material.dart';

class Tablica extends StatelessWidget {
  const Tablica({super.key});

  final List<DataColumn> stupci = const <DataColumn>[
    DataColumn(label: Text("ime")),
    DataColumn(label: Text("prezime")),
    DataColumn(label: Text("dob")),
  ];

  final List<DataRow> redovi = const <DataRow>[
    DataRow(cells: <DataCell>[
      DataCell(Text("Ivan")),
      DataCell(Text("Ivić")),
      DataCell(Text("25")),
    ]),
    DataRow(cells: <DataCell>[
      DataCell(Text("Ana")),
      DataCell(Text("Anić")),
      DataCell(Text("47")),
    ]),
    DataRow(cells: <DataCell>[
      DataCell(Text("Juro")),
      DataCell(Text("Jurić")),
      DataCell(Text("32")),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tablica")),
      body: DataTable(
          columns: stupci,
          rows: redovi,
        ),
    );
  }
}
