import 'package:flutter/material.dart';

class CoursePlayerScreen extends StatefulWidget {
  final int courseId;
  CoursePlayerScreen({required this.courseId});

  @override
  _CoursePlayerScreenState createState() => _CoursePlayerScreenState();
}

class _CoursePlayerScreenState extends State<CoursePlayerScreen> {
  // Mock data for the UI demonstration
  final List<Map<String, dynamic>> _lessons = [
    {"title": "01. Introduction to the Course", "isCompleted": true},
    {"title": "02. Setting up the Environment", "isCompleted": true},
    {"title": "03. Your First PHP Script", "isCompleted": false},
    {"title": "04. Understanding Variables", "isCompleted": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Course Player")),
      body: Column(
        children: [
          // Video Placeholder
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.black,
              child: Center(
                child: Icon(Icons.play_circle_fill, color: Colors.white, size: 64),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("PHP Backend Mastery", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _lessons.length,
              itemBuilder: (context, index) {
                final lesson = _lessons[index];
                return ListTile(
                  leading: Icon(
                    lesson['isCompleted'] ? Icons.check_circle : Icons.radio_button_unchecked,
                    color: lesson['isCompleted'] ? Colors.green : Colors.grey,
                  ),
                  title: Text(lesson['title']),
                  trailing: Icon(Icons.lock_outline, size: 18),
                  onTap: () {
                    // Logic to load specific lesson
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
