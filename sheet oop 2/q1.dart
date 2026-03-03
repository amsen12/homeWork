/*1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title*/
class Note{
  String title;
  String content;
  Note({required this.title, required this.content});

}
class NoteManager{
  List<Note>_notes=[];
  //ADD Note
void addNotes(Note note){
  _notes.add( note);
}
//list
void listNote() {
  if(_notes.isEmpty){
    print( 'list not found');
    return;
  }
  else{
  for (var note in _notes) {
    print(note.title);
    print(note.content);
  }}

}
//search

  void searchNoteByTitle(String title) {
    List<Note> results = [];

    for (var note in _notes) {
      if (note.title.toLowerCase() == title.toLowerCase()) {
        results.add(note);
      }
    }

    if (results.isEmpty) {
      print(" Note not found");
    } else {
      for (var note in results) {
        print(" Found:");
        print("Title: ${note.title}");
        print("Content: ${note.content}");
      }
    }
  }

}
void main(){
  NoteManager notePage1=NoteManager();
  notePage1.addNotes(Note(title: 'sleap', content: 'should sleap at 12 pm'));// annomys object
   notePage1.listNote();
  notePage1.searchNoteByTitle('shopping');
}
