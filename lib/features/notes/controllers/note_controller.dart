import 'package:securenotes/utils/http/http_client.dart';
import 'package:securenotes/features/notes/models/note_model.dart';

class NoteController {
  static Future<List<Note>?> fetchNotes() async {
    try {
      var response = await HttpHelper.get('notes');
      List<dynamic> notesData = response;
      var notes = (notesData
          .map((note) => Note(
                title: note['title'],
                content: note['content'],
                created: DateTime.parse(note['created']),
                lastModified: DateTime.parse(note['lastModified']),
              ))
          .toList());
      return notes;
    } catch (e) {
      print('Error fetching notes: $e');
      return null;
    }
  }
}
