// lib/pages/course_details_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../course_state.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Consumer<CourseState>(
      builder: (context, courseState, child) {
        final course = courseState.selectedCourse;

        if (course == null) {
          return Scaffold(
            appBar: AppBar(title: const Text('Course Details')),
            body: const Center(child: Text('No course selected')),
          );
        }

        return Scaffold(
          appBar: AppBar(title: Text(course.name)),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text('Instructor: ${course.instructor}'),
                const SizedBox(height: 16),
                Text(course.description),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enrolled in ${course.name}')));
                  },
                  child: const Text('Enroll'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
