import 'package:flutter/material.dart';
import '../services/database_service.dart';

class AddSongsToPlaylistPage extends StatefulWidget {
  final String playlistId;
  final String playlistName;

  const AddSongsToPlaylistPage({
    super.key,
    required this.playlistId,
    required this.playlistName,
  });

  @override
  _AddSongsToPlaylistPageState createState() => _AddSongsToPlaylistPageState();
}

class _AddSongsToPlaylistPageState extends State<AddSongsToPlaylistPage> {
  final DatabaseService dbService = DatabaseService();
  List<String> selectedSongs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Songs to ${widget.playlistName}")),
      body: StreamBuilder(
        stream: dbService.getSongs(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          var songs = snapshot.data!.docs;

          return ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, index) {
              var song = songs[index];
              return CheckboxListTile(
                title: Text(song['title']),
                subtitle: Text(song['artist']),
                value: selectedSongs.contains(song.id),
                onChanged: (bool? selected) {
                  setState(() {
                    if (selected!) {
                      selectedSongs.add(song.id);
                    } else {
                      selectedSongs.remove(song.id);
                    }
                  });
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () async {
          for (var songId in selectedSongs) {
            var songData = await dbService.getSongById(songId);
            if (songData != null) {
              await dbService.addSongToPlaylist(widget.playlistId, songData as String);
            }
          }
          Navigator.pop(context);
        },
      ),
    );
  }
}
