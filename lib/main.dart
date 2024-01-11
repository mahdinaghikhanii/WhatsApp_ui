import 'package:flutter/material.dart';
import 'package:whats_app_ui/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(key: Key('value'), title: "WhatsApp"));
  }
}
