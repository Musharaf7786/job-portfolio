import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mohammad Musharaf Shaik - Portfolio',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  final String resumePath = 'assets/Mohammad_Musharaf_Flutter_Developer.pdf';

  Future<void> _downloadResume() async {
    final url = resumePath;
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Section
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('assets/image.jpeg'),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Mohammad Musharaf Shaik',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Flutter Developer | Mobile & Web Applications',
                    style: GoogleFonts.poppins(
                        fontSize: 18, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: _downloadResume,
                    icon: const Icon(Icons.download_rounded),
                    label: const Text(
                      'Download Resume',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // WORK EXPERIENCE
                  SectionTitle(title: "Work Experience"),
                  WorkExperienceCard(
                    company: "Integra Micro Systems Pvt. Ltd",
                    role: "Software Developer",
                    duration: "July 2023 – Present",
                    responsibilities: [
                      "Developing and maintaining mobile applications using Flutter and Dart.",
                      "Assisted in testing and validating Qt-based terminal applications in C/C++."
                    ],
                  ),
                  const SizedBox(height: 40),

                  // PROJECTS
                  SectionTitle(title: "Projects"),
                  ProjectCard(
                    title: "UPPCL POS Billing Application",
                    role: "Flutter Developer",
                    technologies:
                    "Flutter, Dart, REST APIs, UPPCL API, MVVM",
                    description:
                    "Developed a mobile POS app for Uttar Pradesh Power Corporation Limited for real-time billing and payment collection on Android-based POS devices.",
                    responsibilities: [
                      "Built a responsive and robust application using Flutter and Dart.",
                      "Connected with UPPCL APIs to fetch customer billing data and process payments.",
                      "Designed intuitive UI optimized for usability and fast workflows.",
                      "Ensured secure payment mechanisms aligned with UPPCL protocols."
                    ],
                    achievements: [
                      "Successfully deployed on Android-based POS devices.",
                      "Enhanced operational efficiency and reduced manual errors.",
                      "Delivered a user-centric interface for faster navigation."
                    ],
                  ),
                  const SizedBox(height: 20),
                  ProjectCard(
                    title: "Dynamic Template UI Module",
                    role: "Flutter Developer",
                    technologies:
                    "Flutter, Dart, REST APIs, JSON, Custom Widget Framework",
                    description:
                    "Enhancing a dynamic UI rendering module that interprets structured data and auto-generates adaptive user interfaces.",
                    responsibilities: [
                      "Developed templates that auto-generate UI elements.",
                      "Implemented action handlers for API calls, e-signatures, printing, and field changes.",
                      "Contributed to a modular, scalable widget system.",
                      "Designed module to improve productivity for developers and testers."
                    ],
                    achievements: [
                      "Reduced UI development time with data-driven rendering.",
                      "Enhanced flexibility in app functionality with reusable components.",
                      "Supported rapid prototyping and testing through configurable widgets."
                    ],
                  ),
                  const SizedBox(height: 40),

                  // COURSES
                  SectionTitle(title: "Courses & Training"),
                  ListTile(
                    leading: const Icon(Icons.school, color: Colors.teal),
                    title: Text(
                      "Advanced Embedded Systems Course - Emertxe Information Technologies, Bangalore",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    subtitle: Text(
                      "Government of India certified program aligned with Skill India / NSDC under Electronics Sector Skill Council of India.",
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  const SizedBox(height: 40),

                  // TECHNICAL SKILLS
                  SectionTitle(title: "Technical Skills"),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: const [
                      SkillChip(label: "Flutter"),
                      SkillChip(label: "Dart"),
                      SkillChip(label: "Advanced C Programming"),
                      SkillChip(label: "REST APIs"),
                      SkillChip(label: "MVVM Architecture"),
                      SkillChip(label: "UI/UX Design"),
                    ],
                  ),
                  const SizedBox(height: 40),

                  // EDUCATION
                  SectionTitle(title: "Academic Profile"),
                  AcademicCard(
                    degree: "B.Tech in ECE",
                    institute: "Guntur Engineering College, Guntur",
                    year: "2019-2022",
                    grade: "7.78 CGPA",
                  ),
                  AcademicCard(
                    degree: "Diploma in ECE",
                    institute: "Guntur Engineering College, Guntur",
                    year: "2016-2019",
                    grade: "75%",
                  ),
                  AcademicCard(
                    degree: "S.S.C",
                    institute: "S.C.M.P.M.C High School, Guntur",
                    year: "2016",
                    grade: "8.3 GPA",
                  ),
                  const SizedBox(height: 40),

                  // ACADEMIC PROJECT
                  SectionTitle(title: "Academic Project"),
                  AcademicProjectCard(
                    title: "Disaster Detection and Monitoring System Using IoT",
                    description:
                    "Detects and monitors disasters (floods, earthquakes, temperature) using IoT. Utilizes Arduino UNO and sensors to alert users in coastal areas before disasters happen.",
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// SECTION TITLE WIDGET
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.teal[800],
        ),
      ),
    );
  }
}

// WORK EXPERIENCE CARD
class WorkExperienceCard extends StatelessWidget {
  final String company;
  final String role;
  final String duration;
  final List<String> responsibilities;

  const WorkExperienceCard({
    super.key,
    required this.company,
    required this.role,
    required this.duration,
    required this.responsibilities,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$role @ $company",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(duration, style: GoogleFonts.poppins(color: Colors.grey[700])),
            const SizedBox(height: 10),
            ...responsibilities.map(
                  (res) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_right, size: 20, color: Colors.teal),
                    const SizedBox(width: 8),
                    Expanded(child: Text(res, style: GoogleFonts.poppins())),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// PROJECT CARD
class ProjectCard extends StatelessWidget {
  final String title;
  final String role;
  final String technologies;
  final String description;
  final List<String> responsibilities;
  final List<String> achievements;

  const ProjectCard({
    super.key,
    required this.title,
    required this.role,
    required this.technologies,
    required this.description,
    required this.responsibilities,
    required this.achievements,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            Text(role, style: GoogleFonts.poppins(color: Colors.grey[700])),
            Text("Tech: $technologies",
                style: GoogleFonts.poppins(color: Colors.grey[700])),
            const SizedBox(height: 10),
            Text(description, style: GoogleFonts.poppins()),
            const SizedBox(height: 10),
            Text("Responsibilities:",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
            ...responsibilities.map(
                  (res) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle, size: 18, color: Colors.teal),
                    const SizedBox(width: 6),
                    Expanded(child: Text(res, style: GoogleFonts.poppins())),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text("Achievements:",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
            ...achievements.map(
                  (ach) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  children: [
                    const Icon(Icons.star, size: 18, color: Colors.amber),
                    const SizedBox(width: 6),
                    Expanded(child: Text(ach, style: GoogleFonts.poppins())),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SKILL CHIP
class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: GoogleFonts.poppins()),
      backgroundColor: Colors.teal[50],
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    );
  }
}

// ACADEMIC CARD
class AcademicCard extends StatelessWidget {
  final String degree;
  final String institute;
  final String year;
  final String grade;

  const AcademicCard({
    super.key,
    required this.degree,
    required this.institute,
    required this.year,
    required this.grade,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.school, color: Colors.teal),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(degree,
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(institute, style: GoogleFonts.poppins()),
                    Text("$year | $grade", style: GoogleFonts.poppins()),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

// ACADEMIC PROJECT CARD
class AcademicProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const AcademicProjectCard(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(description, style: GoogleFonts.poppins(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
