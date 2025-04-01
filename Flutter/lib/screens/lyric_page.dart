import 'package:flutter/material.dart';

class LyricScreen extends StatelessWidget {
  final String title;
  final String artist;
  final String lyric;

  const LyricScreen({
    super.key,
    required this.title,
    required this.artist,
    required this.lyric,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$title - $artist")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            lyric,
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
