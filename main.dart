import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'course_state.dart';
import 'pages/course_listing_page.dart';
import 'pages/course_details_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CourseState(),
      // ignore: prefer_const_constructors
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/courseListing': (context) => const CourseListingPage(),
        '/courseDetails': (context) => const CourseDetailsPage(),
      },
    );
  }
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let us learn'),
        backgroundColor: Colors.blue,
        actions: [
          // Enroll button in AppBar
          IconButton(
            icon: const Icon(Icons.school),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Enroll button pressed')),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/studying.jpg'), // Ensure this path is correct
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay color
          Container(
            color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to the Course App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/courseListing');
                  },
                  child: const Text('View Courses'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


 