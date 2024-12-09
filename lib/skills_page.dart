import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              "Programming Languages:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("• Dart", style: TextStyle(fontSize: 16)),
            const Text("• Python", style: TextStyle(fontSize: 16)),
            const Text("• Java", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text(
              "Frameworks:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("• Flutter", style: TextStyle(fontSize: 16)),
            const Text("• Django", style: TextStyle(fontSize: 16)),
            const Text("• Spring Boot", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text(
              "Other Skills:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("• Problem-Solving", style: TextStyle(fontSize: 16)),
            const Text("• Team Collaboration", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
