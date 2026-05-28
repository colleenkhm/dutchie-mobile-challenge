import 'package:flutter/material.dart';
import '../data/album_notifier.dart';

class AlbumsPage extends StatelessWidget {
 AlbumsPage({super.key, required this.albumNotifier});

 final AlbumNotifier albumNotifier;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Albums')),
      body: const Center(child: Text('Albums')),
    );
  }
}
