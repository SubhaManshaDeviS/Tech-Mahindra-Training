import 'package:flutter/material.dart';
import 'package:music/screens/add_songs_to_playlist_page.dart';
import '../services/database_service.dart';
import '../widgets/song_card.dart';
import '../screens/lyric_page.dart';

class PlaylistSongsPage extends StatelessWidget {
  final String playlistId;
  final String playlistName;
  final DatabaseService dbService = DatabaseService();

  PlaylistSongsPage({super.key, required this.playlistId, required this.playlistName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(playlistName)),
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: dbService.getSongsInPlaylist(playlistId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No songs in this playlist."));
          }

          final songs = snapshot.data!;

          return ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, index) {
              var song = songs[index];

              return SongCard(
                id: song['id'],
                title: song['title'],
                artist: song['artist'],
                album: song['album'],
                lyric: song['lyric'],
                imageUrl: song['imageUrl'],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LyricScreen(
                        lyric: song['lyric'],
                        title: song['title'],
                        artist: song['artist'],
                      ),
                    ),
                  );
                },
                onDelete: () {
                  dbService.removeSongFromPlaylist(playlistId, song['id']);
                }, 
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddSongsToPlaylistPage(
                playlistId: playlistId,
                playlistName: playlistName,
              ),
            ),
          );
        },
      ),
    );
  }
}
