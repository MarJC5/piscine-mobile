import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ex01', // Add a title for the app
      theme: ThemeData(
        // Add a theme for the app
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
        ), // Add a color scheme for the app
      ),
      home: HomePage(), // Add a home page for the app
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = 'A simple text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center the content
        child: Column(
          // Use a column to align the children
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the children vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center the children horizontally
          children: [
            Text(message), // Add a simple text
            ElevatedButton(
              // Add an elevated button
              onPressed: () {
                // toggle the button text
                setState(() {
                  message =
                      message == 'A simple text'
                          ? 'Hello World!'
                          : 'A simple text';
                });
              },
              child: const Text('Click me'), // Add a text for the button
            ),
          ],
        ),
      ),
    );
  }
}
