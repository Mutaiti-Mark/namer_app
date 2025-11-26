import 'package:flutter/material.dart';
import 'package:namer_app/names.dart';

class NamesCard extends StatelessWidget {
  const NamesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: 250,
      child: Card(
        color: Colors.red[800],
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Text(
              "$current",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: "Handlee",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
