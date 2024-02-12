class Note {
  String id;
  String title;
  String content;
  DateTime created;
  DateTime lastModified;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.created,
    required this.lastModified,
  });

  Map<String, dynamic> toJSON() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'created': created.toIso8601String(),
      'lastModified': lastModified.toIso8601String(),
    };
  }

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
