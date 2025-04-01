import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../services/database_service.dart';
import '../widgets/playlist_card.dart';
import 'add_playlist_page.dart';
import 'playlist_songs_page.dart';

class PlaylistPage extends StatelessWidget {
  final DatabaseService dbService = DatabaseService();

  PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Playlists')),
      body: StreamBuilder<QuerySnapshot>(
        stream: dbService.getPlaylists(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

          var playlists = snapshot.data!.docs;

          return ListView.builder(
            itemCount: playlists.length,
            itemBuilder: (context, index) {
              var playlist = playlists[index];

              return PlaylistCard(
                id: playlist.id,
                name: playlist['name'],
                coverUrl: playlist['coverUrl'],
                onDelete: () => dbService.deletePlaylist(playlist.id),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaylistSongsPage(
                        playlistId: playlist.id,
                        playlistName: playlist['name'],
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPlaylistPage()),
          );
        },
      ),
    );
  }
}
