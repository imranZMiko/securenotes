import 'dart:convert';
import 'dart:ffi';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:securenotes/utils/http/http_client.dart';
import 'package:securenotes/features/notes/models/note_model.dart';

class NoteController extends GetxController {
  var getNotes = <Note>[].obs;

  @override
  void onInit() {
    fetchNotes();
    super.onInit();
  }

  void deleteNoteById(String id) async {
    final storage = const FlutterSecureStorage();

    getNotes.removeWhere((note) => note.id == id);

    getNotes.refresh();

    try {
      await HttpHelper.delete('notes/${id}');

      var notes = getNotes.toList();
      await storage.write(
          key: 'notes',
          value: jsonEncode(notes.map((note) => note.toJSON()).toList()));
    } catch (e) {
      print("HEHE");
      print(e);
    }
  }

  void addOrUpdateNote(Note newNote) async {
    final storage = const FlutterSecureStorage();

    try {
      var existingNote = getNotes.firstWhere((note) => note.id == newNote.id);

      existingNote.title = newNote.title;
      existingNote.content = newNote.content;
      existingNote.created = newNote.created;
      existingNote.lastModified = newNote.lastModified;

      getNotes.refresh();
      try {
        await HttpHelper.put('notes/${newNote.id}', newNote.toJSON());

        var notes = getNotes.toList();
        await storage.write(
            key: 'notes',
            value: jsonEncode(notes.map((note) => note.toJSON()).toList()));
      } catch (e) {
        print("HEHE");
        print(e);
      }
    } catch (e) {
      getNotes.add(newNote);
      try {
        await HttpHelper.post('notes', newNote.toJSON());

        var notes = getNotes.toList();
        await storage.write(
          key: 'notes',
          value: jsonEncode(
            notes.map((note) => note.toJSON()).toList(),
          ),
        );
      } catch (e) {
        print("hoho");
        print(e);
      }
    }
  }

  String findMissingNoteId() {
    int missingId = 1;

    while (getNotes.any((note) => note.id == missingId.toString())) {
      missingId++;
    }

    return missingId.toString();
  }

  void fetchNotes() async {
    final storage = const FlutterSecureStorage();

    try {
      var response = await HttpHelper.get('notes');
      List<dynamic> notesData = response;

      var notes = (notesData
          .map((note) => Note(
                id: note['id'],
                title: note['title'],
                content: note['content'],
                created: DateTime.parse(note['created']),
                lastModified: DateTime.parse(note['lastModified']),
              ))
          .toList());

      getNotes.assignAll(notes);

      await storage.write(
          key: 'notes',
          value: jsonEncode(notes.map((note) => note.toJSON()).toList()));
    } catch (e) {
      print(e);
      String? value = await storage.read(key: 'notes');
      List<dynamic> notesData = jsonDecode(value!);

      var notes = (notesData
          .map((note) => Note.fromJSON({
                'id': note['id'],
                'title': note['title'],
                'content': note['content'],
                'created': note['created'],
                'lastModified': note['lastModified'],
              }))
          .toList());
      getNotes.assignAll(notes);
    }
  }
}
