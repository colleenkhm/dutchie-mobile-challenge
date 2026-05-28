import 'package:flutter/material.dart';
import 'playlist_store.dart';

class PlaylistPage extends StatelessWidget {
 PlaylistPage({super.key, required this.playlistStore});

  final PlaylistStore playlistStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Playlist')),
      body: const Center(child: Text('Playlist')),
    );
  }
}
