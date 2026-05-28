import 'song.dart';

class Album {
  Album({required this.id, required this.title, required this.genre, required this.imageUrl, required this.songs});
  final String id;
  final String title;
  final String genre;
  final String imageUrl;
  final List<Song> songs;

  Album.fromJson(Map<String, dynamic> json)
  : id = json['id'] as String,
  title = json['title'] as String,
  genre = json['genre'] as String,
  imageUrl = json['imageUrl'] as String,
  songs = (json['songs'] as List).map((s) => Song.fromJson(s as Map<String, dynamic>)).toList();
}