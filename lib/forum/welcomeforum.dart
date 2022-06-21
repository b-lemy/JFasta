import 'package:flutter/material.dart';
import 'package:flutter_app/db/postdatabase.dart';
import 'package:flutter_app/forum/addpost.dart';
import 'package:flutter_app/forum/postdetails.dart';
import 'package:flutter_app/forum/widgets/note_card_widget.dart';
import 'package:flutter_app/models/postmodel.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class forumintro extends StatefulWidget {
  @override
  State<forumintro> createState() => _forumintroState();
}

class _forumintroState extends State<forumintro> {
  late List<Note> notes;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllNotes();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Forum",
            style: GoogleFonts.openSans(
                letterSpacing: 4,
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.search_off_outlined),
            onPressed: () {
              print("object");
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 6.0),

            ),
          ],
          elevation: 0.5,
        ),
        body:Center(
                    child: isLoading
                   ? CircularProgressIndicator()
                  : notes.isEmpty
                    ? Text(
                     'No Notes',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                   )
                 : StaggeredGridView.countBuilder(
                      padding: EdgeInsets.all(8),
                      itemCount: notes.length,
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                      crossAxisCount: 1,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      itemBuilder: (context, index) {
                        final note = notes[index];

                        return GestureDetector(
                          onTap: () async {
                            await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>postdetails(noteId: note.id!),
                            ));

                            refreshNotes();
                          },
                          child: NoteCardWidget(note: note, index: index),
                        );
                      },
                    ),
                   ),
                floatingActionButton: Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: FloatingActionButton(
                       backgroundColor: Colors.redAccent,
                    child: Icon(Icons.add),
                            onPressed: () async {
                               await Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => AddTodoButton()),
                        );

                               refreshNotes();
              },
              ),
                ),
    ),
    );
  }
}



