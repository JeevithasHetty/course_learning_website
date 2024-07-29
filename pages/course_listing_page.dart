//lib/pages/course_listing_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../course_state.dart';
import '../widgets/sidebar.dart';

class CourseListingPage extends StatelessWidget {
  const CourseListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Available Courses')),
      body: Container(
        color: Colors.blueGrey[50], // Background color for the course listing page
        padding: const EdgeInsets.all(8.0),
        child: Consumer<CourseState>(
          builder: (context, courseState, child) {
            return ListView.builder(
              itemCount: courseState.courses.length,
              itemBuilder: (context, index) {
                final course = courseState.courses[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  elevation: 4.0,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    title: Text(
                      course.name,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Instructor: ${course.instructor}'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      courseState.selectCourse(course);
                      Navigator.pushNamed(context, '/courseDetails');
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
      drawer: const Sidebar(),
    );
  }
}
