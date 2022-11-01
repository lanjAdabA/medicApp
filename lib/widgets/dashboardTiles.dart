import 'package:assignment/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DashTile extends StatefulWidget {
  final String img;
  final String caption;

  const DashTile({
    Key? key,
    required this.img,
    required this.caption,
  }) : super(key: key);

  @override
  State<DashTile> createState() => _DashTileState();
}

class _DashTileState extends State<DashTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: GestureDetector(
        onTap: () {
          context.router.push(const PatientListRoute());
        },
        child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18))),
            elevation: 4,
            color: Colors.grey[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(widget.img)),
                RichText(
                  text: TextSpan(
                    text: widget.caption,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            )),
      ),
    );
  }
}
