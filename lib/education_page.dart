import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Bachelor of Computer Science",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text("University of Chittagong, 2020 - 2024"),
            const SizedBox(height: 10),
            const Text(
              "College",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text("Govt City College ,Chittagong, 2018 - 2020"),
            const SizedBox(height: 20), 
            const Text(
              "Certifications:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("• Google Associate Android Developer", style: TextStyle(fontSize: 16)),
            const Text("• Coursera: Machine Learning by Stanford", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
