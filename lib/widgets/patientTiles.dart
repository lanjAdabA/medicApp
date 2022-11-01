import 'package:flutter/material.dart';

class PatientTile extends StatefulWidget {
  const PatientTile({super.key});

  @override
  State<PatientTile> createState() => _PatientTileState();
}

class _PatientTileState extends State<PatientTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage("assets/nurse.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  " CH RONALDO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: "Male",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                          children: [
                            TextSpan(text: " | "),
                            TextSpan(text: "1995-01-22")
                          ]),
                    )
                  ],
                ),
              ],
            ),
            const Text(
              "view",
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
