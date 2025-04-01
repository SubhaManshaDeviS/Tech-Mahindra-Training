import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../services/database_service.dart';
import 'add_song_page.dart';
import '../widgets/song_card.dart';
import 'lyric_page.dart';

class SongsPage extends StatelessWidget {
  final DatabaseService dbService = DatabaseService();

  SongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Songs')),
      body: StreamBuilder<QuerySnapshot>(
        stream: dbService.getSongs(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No songs available."));
          }

          final songs = snapshot.data!.docs;

          return ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, index) {
              var song = songs[index];

              return SongCard(
                id: song.id,
                title: song['title'] ?? 'Unknown Title',
                artist: song['artist'] ?? 'Unknown Artist',
                album: song['album'] ?? 'Unknown Album',
                imageUrl: song['imageUrl'] ?? '',
                lyric: song['lyric'] ?? 'No lyrics available',
                onDelete: () => dbService.deleteSong(song.id),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LyricScreen(
                        title: song['title'] ?? 'Unknown Title',
                        artist: song['artist'] ?? 'Unknown Artist',
                        lyric: song['lyric'] ?? 'No lyrics available',
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddSongPage()),
        ),
      ),
    );
  }
}
