import 'package:flutter/material.dart';
import '../data/album_notifier.dart';
import '../data/async_state.dart';
import '../playlist/playlist_store.dart';
import 'album_detail_page.dart';

class AlbumsPage extends StatelessWidget {
 AlbumsPage({super.key, required this.albumNotifier, required this.playlistStore});

 final AlbumNotifier albumNotifier;
 final PlaylistStore playlistStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Albums')),
      body: ListenableBuilder(listenable: albumNotifier, builder: (context, _) {
        return switch (albumNotifier.state) {
          Loading() => Center(child: CircularProgressIndicator(strokeWidth: 4.0, valueColor: AlwaysStoppedAnimation<Color>(Colors.blue))),
          Failure(:final message) => Center(child: Text(message)),
          Success(:final data) => ListView.builder(itemCount: data.length, itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index].title),
              subtitle: Text(data[index].genre),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AlbumDetailPage(
                    album: data[index],
                    playlistStore: playlistStore,
                  ),),);
              },
            );
          }),
        };
      }
    ));
  }
}
