import 'package:flutter/material.dart';
import '../services/database_service.dart';

class AddSongPage extends StatefulWidget {
  const AddSongPage({super.key});

  @override
  _AddSongPageState createState() => _AddSongPageState();
}

class _AddSongPageState extends State<AddSongPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _artistController = TextEditingController();
  final _albumController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _lyricController = TextEditingController();
  final DatabaseService dbService = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Song')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Song Title'),
                validator: (value) => value!.isEmpty ? 'Enter song title' : null,
              ),
              TextFormField(
                controller: _artistController,
                decoration: InputDecoration(labelText: 'Artist'),
                validator: (value) => value!.isEmpty ? 'Enter artist name' : null,
              ),
              TextFormField(
                controller: _albumController,
                decoration: InputDecoration(labelText: 'Album'),
              ),
              TextFormField(
                controller: _imageUrlController,
                decoration: InputDecoration(labelText: 'Image URL'),
              ),
              TextFormField(
                controller: _lyricController,
                decoration: InputDecoration(labelText: 'Lyrics'),
                maxLines: 10,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Add Song'),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await dbService.addSong(
                      _titleController.text,
                      _artistController.text,
                      _albumController.text,
                      _imageUrlController.text,
                      _lyricController.text,
                    );
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
