import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  final String id;
  final String name;
  final String coverUrl;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  const PlaylistCard({
    super.key,
    required this.id,
    required this.name,
    required this.coverUrl,
    required this.onDelete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[800],
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: coverUrl.isNotEmpty
            ? Image.network(coverUrl, width: 50, height: 50, fit: BoxFit.cover)
            : const Icon(Icons.music_note, size: 50, color: Colors.white),
        title: Text(name, style: const TextStyle(color: Colors.white)),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
        onTap: onTap,
      ),
    );
  }
}
