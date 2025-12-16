import 'package:flutter/material.dart';

class PlaybackScreenPage extends StatefulWidget {
  const PlaybackScreenPage({super.key});

  @override
  State<PlaybackScreenPage> createState() => _PlaybackScreenPageState();
}

class _PlaybackScreenPageState extends State<PlaybackScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Playback Screen Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
