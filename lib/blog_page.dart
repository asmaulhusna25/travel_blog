import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  final TextEditingController blogController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the Blog Page!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TextField(
              controller: blogController,
              decoration: InputDecoration(
                labelText: 'Write your blog post here',
              ),
              maxLines: null, // Allows for multiple lines
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String blogPost = blogController.text;
                // You can handle the blog post text as needed (e.g., save it, display it, etc.)
                print('Blog Post: $blogPost');
              },
              child: Text('Submit Blog Post'),
            ),
            Divider(), // A line to separate the blog input from other content
          ],
        ),
      ),
    );
  }
}
