import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Experience"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExperienceTile(
            company: "Tech Solutions Inc.",
            role: "Mobile App Developer",
            duration: "2021 - Present",
            description: "Developed and maintained mobile applications using Flutter and React Native.",
          ),
          ExperienceTile(
            company: "WebSoft Technologies",
            role: "Software Engineer",
            duration: "2020 - 2021",
            description: "Built scalable web applications using Python and Django.",
          ),
        ],
      ),
    );
  }
}

class ExperienceTile extends StatelessWidget {
  final String company;
  final String role;
  final String duration;
  final String description;

  const ExperienceTile({
    required this.company,
    required this.role,
    required this.duration,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(company, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(role, style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            const SizedBox(height: 5),
            Text(duration, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}
