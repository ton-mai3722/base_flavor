import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loop_flavor/core/route/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                context.push(Routes.homeDetailScreen);
              },
              child: Text('Tap to go to Detail - Show NavBar'),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () {
                context.push(Routes.playbackScreen);
              },
              child: Text('Tap to go to Playback Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
