import 'package:flutter/material.dart';
import 'package:music/services/database_service.dart';
import '../services/database_service.dart';

class AddPlaylistPage extends StatefulWidget {
  const AddPlaylistPage({super.key});

  @override
  _AddPlaylistPageState createState() => _AddPlaylistPageState();
}

class _AddPlaylistPageState extends State<AddPlaylistPage> {
  final DatabaseService dbService = DatabaseService();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _coverImageController = TextEditingController();
  List<String> selectedSongs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Create Playlist")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: "Playlist Name"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _coverImageController,
              decoration: const InputDecoration(labelText: "Cover Image URL"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: StreamBuilder(
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
            ),
            ElevatedButton(
              onPressed: () async {
                await dbService.addPlaylist(
                  _nameController.text,
                  _coverImageController.text,
                  selectedSongs,
                );
                Navigator.pop(context);
              },
              child: const Text("Create Playlist"),
            ),
          ],
        ),
      ),
    );
  }
}
