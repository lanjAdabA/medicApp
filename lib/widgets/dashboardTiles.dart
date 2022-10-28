import 'package:flutter/material.dart';

class dashTile extends StatelessWidget {
  final String img;
  final String caption;

  const dashTile({
    Key? key,
    required this.img,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18))),
          elevation: 4,
          color: Colors.grey[50],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Image(image: AssetImage("assets/patient.png")),
              Text(
                "Patient Enrollemnt",
              )
            ],
          )),
    );
  }
}
