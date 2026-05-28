import '../data/song.dart';

class Playlist {
  Playlist({required this.id, required this.name}) : songs = [];

   final String id;
   final String name;
   final List<Song> songs;
  
}