import 'package:flutter/material.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue, // Set the primary color
        fontFamily: 'Roboto', // Set the default font family
        textTheme: const TextTheme(
        headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Define a custom text style
          bodyText2: TextStyle(fontSize: 16), // Define another custom text style
        ),
        buttonTheme:const ButtonThemeData(
          buttonColor: Colors.blue, // Set the default button color
          textTheme: ButtonTextTheme.primary, // Use the primary button text color
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter Styling Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: Theme.of(context).textTheme.headline6, // Use the custom text style defined in the theme
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child:const Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}

