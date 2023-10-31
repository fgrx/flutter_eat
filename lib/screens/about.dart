import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("About"),
          SizedBox(
            height: 14,
          ),
          Text("This app is created for learning :)")
        ],
      ),
    );
  }
}
