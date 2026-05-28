import 'async_state.dart';
import 'album_repository.dart';
import 'album.dart';
import 'package:flutter/foundation.dart';

class AlbumNotifier extends ChangeNotifier {
  AlbumNotifier({required this.repository});

  final AlbumRepository repository;
  AsyncState<List<Album>> state = Loading();

  Future<void> loadAlbums() async {
    try {
    final albums = await repository.getAlbums();
    state = Success(albums);
    notifyListeners();
    } catch (e) {
      state = Failure(e.toString());
      notifyListeners();
    }
  }
}