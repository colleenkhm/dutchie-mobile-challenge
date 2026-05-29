import 'package:flutter/material.dart';
import '../data/album.dart';
import '../playlist/playlist_store.dart';
import '../data/song.dart';
import '../shared/show_create_playlist_dialog.dart';

class AlbumDetailPage extends StatelessWidget {
  AlbumDetailPage({super.key, required this.album, required this.playlistStore}); 
  final Album album;
  final PlaylistStore playlistStore;

   void _showAddToPlaylist(BuildContext context, Song song) {
  showModalBottomSheet(context: context, builder: (_) => ListView.builder(itemCount: playlistStore.playlists.length + 1, itemBuilder: (context, index) {
    if (index == 0) { return ListTile(
    title: Text('New Playlist'), 
    onTap: () =>
 showCreatePlaylistDialog(context, playlistStore, song: song),
    );
    }
    
      final playlist = playlistStore.playlists[index - 1];
      return ListTile(
      title: Text(playlist.name),
      onTap: () {
      playlistStore.addSong(playlist.id, song);
      Navigator.pop(context);
    },
      );
  }));
   }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text(album.title)),
    body: ListView.builder(itemCount: album.songs.length, itemBuilder: (context, index) {
      return ListTile(
        title: Text(album.songs[index].title),
        trailing: IconButton(icon: const Icon(Icons.add),
              onPressed: () => _showAddToPlaylist(context, album.songs[index]),),
      );
    })
  );
}
}