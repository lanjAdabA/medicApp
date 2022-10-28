import 'package:assignment/widgets/dashboardTiles.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Map<String, dynamic>> dashboard = [
    {"img": "assets/patient.png", "caption": "Patient Enrolmment"},
    {"img": "assets/manage.png", "caption": "HealthCare Management"},
    {"img": "assets/patient.png", "caption": "Patient Enrolmment"},
    {"img": "assets/manage.png", "caption": "HealthCare Management"},
    {"img": "assets/patient.png", "caption": "Patient Enrolmment"},
    {"img": "assets/manage.png", "caption": "HealthCare Management"},
    {"img": "assets/patient.png", "caption": "Patient Enrolmment"},
    {"img": "assets/manage.png", "caption": "HealthCare Management"},
    {"img": "assets/patient.png", "caption": "Patient Enrolmment"},
    {"img": "assets/manage.png", "caption": "HealthCare Management"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.medical_information_rounded,
              size: 40,
              color: Colors.teal[700],
            ),
            Text(
              "MedicApp",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.teal[700],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome to MedicApp Dashboard",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              "Changing the way you receive healthcare with medical excellence",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 42),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return dashTile(
                    caption: dashboard[index]["caption"],
                    img: dashboard[index]["img"],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
