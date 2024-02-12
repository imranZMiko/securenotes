/// Represents a Note object with id, title, content, created date, and last modified date.
class Note {
  String id;
  String title;
  String content;
  DateTime created;
  DateTime lastModified;

  /// Constructor for creating a Note object.
  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.created,
    required this.lastModified,
  });

  /// Converts the Note object to a JSON format.
  Map<String, dynamic> toJSON() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'created': created.toIso8601String(),
      'lastModified': lastModified.toIso8601String(),
    };
  }

  /// Creates a Note object from a JSON map.
  factory Note.fromJSON(Map<String, dynamic> json) {
    return Note(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      created: DateTime.parse(json['created']),
      lastModified: DateTime.parse(json['lastModified']),
    );
  }
}
