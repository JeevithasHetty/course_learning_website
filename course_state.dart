//lib/course_state.dart
import 'package:flutter/material.dart';
import 'models/course.dart';

class CourseState with ChangeNotifier {
  final List<Course> _courses = [
    Course(id: '1', name: 'Flutter Basics', instructor: 'John Doe', description: 'Learn the basics of Flutter.'),
    Course(id: '2', name: 'Advanced Flutter', instructor: 'Jane Smith', description: 'Deep dive into Flutter.'),
    Course(id: '3', name: 'Introduction to Dart', instructor: 'Emily Davis', description: 'Learn the Dart programming language.'),
    Course(id: '4', name: 'UI/UX Design Principles', instructor: 'Michael Brown', description: 'Understand the principles of UI/UX design.'),
    Course(id: '5', name: 'Marketing Strategies', instructor: 'Sarah Wilson', description: 'Learn effective marketing strategies.'),
    Course(id: '6', name: 'Business Management', instructor: 'David Johnson', description: 'Explore business management techniques.'),
    Course(id: '7', name: 'Data Science with Python', instructor: 'Laura Martinez', description: 'Learn data science techniques using Python.'),
    Course(id: '8', name: 'Web Development', instructor: 'James Lee', description: 'Get started with web development.'),
    Course(id: '9', name: 'Graphic Design', instructor: 'Olivia Taylor', description: 'Learn graphic design skills.'),
    Course(id: '10', name: 'Project Management', instructor: 'William Anderson', description: 'Understand project management processes.'),
    Course(id: '11', name: 'Cyber Security', instructor: 'Ava Thomas', description: 'Learn about cyber security and best practices.'),
    Course(id: '12', name: 'Artificial Intelligence', instructor: 'Ethan Harris', description: 'Introduction to artificial intelligence concepts.'),
    Course(id: '13', name: 'Cloud Computing', instructor: 'Mia Clark', description: 'Learn about cloud computing and its applications.'),
    Course(id: '14', name: 'Machine Learning', instructor: 'Benjamin Lewis', description: 'Explore machine learning techniques and algorithms.'),
    Course(id: '15', name: 'DevOps Practices', instructor: 'Sophia Walker', description: 'Learn about DevOps practices and tools.'),
  ];

  Course? _selectedCourse;

  List<Course> get courses => _courses;
  Course? get selectedCourse => _selectedCourse;

  void selectCourse(Course course) {
    _selectedCourse = course;
    notifyListeners();
  }
}

