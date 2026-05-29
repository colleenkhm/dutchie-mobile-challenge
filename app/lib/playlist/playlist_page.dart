import 'package:flutter/material.dart';
import 'playlist_store.dart';
import '../shared/show_create_playlist_dialog.dart';

class PlaylistPage extends StatelessWidget {
 PlaylistPage({super.key, required this.playlistStore});

  final PlaylistStore playlistStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Playlist')),
      body: ListenableBuilder(listenable: playlistStore, builder: (context, _) {
        return ListView.builder(itemCount: playlistStore.playlists.length, itemBuilder: (context, index) {
          final playlist = playlistStore.playlists[index];
          return ListTile(
            title: Text(playlist.name),
          );
        });
      }),
      floatingActionButton: FloatingActionButton(onPressed: () => showCreatePlaylistDialog(context, playlistStore),
      child: const Icon(Icons.add),
      )
    );
  }
}
