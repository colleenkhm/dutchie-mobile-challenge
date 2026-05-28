class Song {

  Song({required this.id, required this.title, required this.durationMs});

  final String id;
  final String title;
  final int durationMs;

  Song.fromJson(Map<String, dynamic> json)
  : id = json['id'] as String,
  title = json['title'] as String,
  durationMs = json['durationMs'] as int;
}