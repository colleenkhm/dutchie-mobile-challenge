import 'package:flutter/foundation.dart';
import 'playlist.dart';
import '../data/song.dart';

class PlaylistStore extends ChangeNotifier {
  final List<Playlist> _playlists = [];
  List<Playlist> get playlists => List.unmodifiable(_playlists);

  void createPlaylist(String name) {
    final playlist = Playlist(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
    );
    _playlists.add(playlist);
    notifyListeners();
  }

  void addSong(String playlistId, Song song) {
    final playlist = _playlists.firstWhere((p) => p.id == playlistId);
    // ensure song is not already in list
    if (!playlist.songs.any((s) => s.id == song.id)) {
      playlist.songs.add(song);
      notifyListeners();
    }
  }

  void removeSong(String playlistId, Song song) {
      final playlist = _playlists.firstWhere((p) => p.id == playlistId);
      playlist.songs.removeWhere((s) => s.id == song.id);
      notifyListeners();
  }

  void reorderSong(String playlistId, int oldIndex, int newIndex) {
    final playlist = _playlists.firstWhere((p) => p.id == playlistId);
    final song = playlist.songs.removeAt(oldIndex);
    playlist.songs.insert(newIndex, song);
    notifyListeners();
  }

}