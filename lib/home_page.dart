import 'package:flutter/material.dart';
import 'travel_list_page.dart';
import 'blog_page.dart'; // Import the QuizPage and CoursePage

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Platform'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the Blog Platform!',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TravelListPage()), // Navigate to QuizPage
                );
              },
              child:
                  Text('Go to Travel List Page'), // Add a button for the "quiz" page
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlogPage()), // Navigate to CoursePage
                );
              },
              child: Text(
                  'Go to Blog Page'), // Add a button for the "course" page
            ),
          ],
        ),
      ),
    );
  }
}
