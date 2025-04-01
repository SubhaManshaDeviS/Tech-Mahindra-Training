import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference songCollection =
      FirebaseFirestore.instance.collection('songs');

  final CollectionReference playlistCollection =
      FirebaseFirestore.instance.collection('playlists');

  Future<DocumentReference> addSong(
    String title,
    String artist,
    String album,
    String imageUrl,
    String lyric,
  ) async {
    return await songCollection.add({
      'title': title,
      'artist': artist,
      'album': album,
      'imageUrl': imageUrl,
      'lyric': lyric,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getSongs() {
    return songCollection.orderBy('timestamp', descending: true).snapshots();
  }

  Future<void> deleteSong(String id) async {
    return await songCollection.doc(id).delete();
  }

  Future<void> addPlaylist(
    String name,
    String coverUrl,
    List<String> songIds,
  ) async {
    await playlistCollection.add({
      'name': name,
      'coverUrl': coverUrl,
      'songs': songIds,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getPlaylists() {
    return playlistCollection.snapshots();
  }

  Future<void> deletePlaylist(String playlistId) async {
    await playlistCollection.doc(playlistId).delete();
  }

  Future<void> addSongToPlaylist(String playlistId, String songId) async {
    await playlistCollection.doc(playlistId).update({
      'songs': FieldValue.arrayUnion([songId]),
    });
  }

  Future<void> removeSongFromPlaylist(String playlistId, String songId) async {
    await playlistCollection.doc(playlistId).update({
      'songs': FieldValue.arrayRemove([songId]),
    });
  }

  /// ✅ **Fix: Get Songs in a Playlist**
  Stream<List<Map<String, dynamic>>> getSongsInPlaylist(String playlistId) {
    return playlistCollection.doc(playlistId).snapshots().asyncMap((playlistDoc) async {
      if (!playlistDoc.exists || playlistDoc.data() == null) {
        return [];
      }

      List<String> songIds = List<String>.from(playlistDoc['songs'] ?? []);

      // ✅ Fetch each song's details from the "songs" collection
      List<Map<String, dynamic>> songs = [];
      for (String songId in songIds) {
        DocumentSnapshot songDoc = await songCollection.doc(songId).get();
        if (songDoc.exists && songDoc.data() != null) {
          songs.add({
            'id': songDoc.id,
            'title': songDoc['title'],
            'artist': songDoc['artist'],
            'album': songDoc['album'],
            'imageUrl': songDoc['imageUrl'],
            'lyric': songDoc['lyric'],
          });
        }
      }

      return songs;
    });
  }

  /// ✅ **Fix: Get Song by ID**
  Future<Map<String, dynamic>?> getSongById(String songId) async {
    DocumentSnapshot doc = await songCollection.doc(songId).get();
    if (doc.exists) {
      return doc.data() as Map<String, dynamic>;
    }
    return null;
  }
}
