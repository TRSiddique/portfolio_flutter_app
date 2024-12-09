import 'package:flutter/material.dart';
import 'personal_info_page.dart';
import 'skills_page.dart';
import 'education_page.dart';
import 'experience_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Resume"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image
            Center(
              child: CircleAvatar(
                radius: 60, // Image size
                backgroundImage: AssetImage('assets/image.png'),
              ),
            ),
            const SizedBox(height: 20),

            // Name
            Center(
              child: Text(
                "Tasfiqur Rahman Siddique",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Phone Number
            Center(
              child: Text(
                "Email: Tasfique.csecu21@gmail.com",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Buttons
            ResumeButton(
              title: "Personal Info",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PersonalInfoPage()),
                );
              },
            ),
            ResumeButton(
              title: "Skills",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SkillsPage()),
                );
              },
            ),
            ResumeButton(
              title: "Education",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EducationPage()),
                );
              },
            ),
            ResumeButton(
              title: "Experience",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExperiencePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ResumeButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ResumeButton({required this.title, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
