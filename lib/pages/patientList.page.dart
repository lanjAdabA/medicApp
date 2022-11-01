import 'package:assignment/widgets/patientTiles.dart';
import 'package:flutter/material.dart';

class PatientListPage extends StatefulWidget {
  const PatientListPage({super.key});

  @override
  State<PatientListPage> createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patient waiting list - Ready for test "),
        centerTitle: false,
        actions: const [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: (5 / 2)),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const PatientTile();
                }),
          ),
        ],
      ),
    );
  }
}
