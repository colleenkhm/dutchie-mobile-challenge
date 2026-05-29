import 'package:flutter/material.dart';
import '../playlist/playlist_store.dart';
import '../data/song.dart';

void showCreatePlaylistDialog(BuildContext context, PlaylistStore store, {Song? song}) {
  final controller = TextEditingController();
  showDialog(context: context,
  builder: (ctx) => AlertDialog(
    title: const Text('New Playlist'),
    content: TextField(
      controller: controller,
      decoration: const InputDecoration(hintText: 'Playlist name'),
      autofocus: true,
    ),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(ctx),
        child: const Text('Cancel'),
      ),
      TextButton(
        onPressed: () {
          if (controller.text.isNotEmpty) {
            store.createPlaylist(controller.text);
            if (song != null) {
            store.addSong(
              store.playlists.last.id,
              song,
            );}
            Navigator.pop(ctx); // dismiss dialog
            Navigator.pop(ctx); // dismiss bottom sheet
          }
        },
        child: const Text('Create'),
      )
    ]
  ));
 }