import 'package:flutter/material.dart';
import 'package:nba_counter/constants.dart';
import 'package:nba_counter/views/home_view.dart';

void main() {
  runApp(const NBACounter());
}

class NBACounter extends StatelessWidget {
  const NBACounter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: kFont),
      home: const HomeView(),
    );
  }
}

