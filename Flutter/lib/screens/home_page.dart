import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../services/database_service.dart';
import 'add_song_page.dart';
import '../widgets/song_card.dart';

class HomePage extends StatelessWidget {
  final DatabaseService dbService = DatabaseService();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Music Manager')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Image Carousel (Slideshow)
            StreamBuilder(
              stream: dbService.getSongs(),
              builder: (context, snapshot) {
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const SizedBox();
                }
                var songs = snapshot.data!.docs;

                return CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayInterval: Duration(seconds: 3),
                  ),
                  items: songs.map<Widget>((song) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        song['imageUrl'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.music_note, size: 100, color: const Color.fromARGB(255, 206, 4, 4)),
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            const SizedBox(height: 20),

            // ✅ Welcome Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.music_note, size: 30, color: const Color.fromARGB(255, 145, 6, 32)),
                      SizedBox(width: 10),
                      Text(
                        'Welcome to Music Manager!',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Manage your songs and playlists easily!',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddSongPage()),
                        );
                      },
                      icon: Icon(Icons.add),
                      label: Text('Add New Song'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ✅ Recent Songs Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Recent Songs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            
            StreamBuilder(
              stream: dbService.getSongs(),
              builder: (context, snapshot) {
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(child: Text("No songs available."));
                }
                var songs = snapshot.data!.docs;

                return Column(
                  children: songs.map<Widget>((song) {
                    return SongCard(
                      id: song.id,
                      title: song['title'],
                      artist: song['artist'],
                      album: song['album'],
                      lyric: song['lyric'],
                      imageUrl: song['imageUrl'],
                      onTap: () {},
                      onDelete: () => dbService.deleteSong(song.id),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
