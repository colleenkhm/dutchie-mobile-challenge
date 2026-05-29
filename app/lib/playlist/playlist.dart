import '../data/song.dart';

class Playlist {
  Playlist({required this.id, required this.name}) : songs = [];

   final String id;
   final String name;
   final List<Song> songs;
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'songs': songs.map((s) => s.toJson()).toList(),
  };
}