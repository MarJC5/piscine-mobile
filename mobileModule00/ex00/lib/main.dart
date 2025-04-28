import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyAppState extends ChangeNotifier {
  // State management can be added here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ex00', // Add a title for the app
      theme: ThemeData( // Add a theme for the app
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange), // Add a color scheme for the app
      ),
      home: HomePage(), // Add a home page for the app
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Center the content
        child: Column( // Use a column to align the children
          mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center the children horizontally
          children: [
            Text('A simple text'), // Add a simple text
            ElevatedButton( // Add an elevated button
              onPressed: () {
                print('Button pressed!');
              },
              child: Text('Click me'), // Add a text for the button
            ),
          ],
        ),
      ),
    );
  }
}