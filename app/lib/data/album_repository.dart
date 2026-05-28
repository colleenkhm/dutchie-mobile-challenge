import 'api_client.dart';
import 'album.dart';

class AlbumRepository {
  AlbumRepository({required this.client});
  final ApiClient client;

  Future<List<Album>> getAlbums() async {
    final rawData = await client.fetchAlbums();
    return rawData.map((a) => Album.fromJson(a)).toList();
  } 
}