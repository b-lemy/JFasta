import 'package:flutter/material.dart';
import 'package:flutter_app/db/postdatabase.dart';
import 'package:flutter_app/forum/widgets/note_form_widget.dart';

import 'package:flutter_app/models/postmodel.dart';

 


class AddTodoButton extends StatefulWidget {
  final Note? note;

  const AddTodoButton({Key? key ,this.note}) : super(key: key);

  @override
  State<AddTodoButton> createState() => _AddTodoButtonState();
}

class _AddTodoButtonState extends State<AddTodoButton> {
  final _formKey = GlobalKey<FormState>();
  late String title;
  late String description;


  @override
  void initState() {
    super.initState();

    title = widget.note?.title ?? '';
    description = widget.note?.description ?? '';
  }

  @override
  Widget build(BuildContext context) {
    // return FloatingActionButton(
    //     child: Icon(Icons.add_box_rounded),
    //       onPressed: () {
    //         showModalBottomSheet(
    //           isScrollControlled: true,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.vertical(
    //                   top: Radius.circular(20.0)
    //               )
    //           ),
    //           context: context, builder: (context) {
              return GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Container(
                    height: MediaQuery.of(context).copyWith().size.height * 0.60,
                  child: Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      title:Text("New Question"),

                      leading:IconButton(

                        icon: const Icon(Icons.cancel_rounded),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },

                      ),
                       actions: [
                         buildButton()
                       ],
                    ),

                            body:Form(
                              key: _formKey,
                              child: NoteFormWidget(
                                title: title,
                                description: description,
                                onChangedTitle: (title) => setState(() => this.title = title),
                                onChangedDescription: (description) =>
                                    setState(() => this.description = description),
                              ),
                            ),

                  ),
                ),
              );
    //         },
    //         );
    //       }
    //
    // );
  }

        Widget buildButton() {
             final isFormValid = title.isNotEmpty && description.isNotEmpty;

             return ElevatedButton(
                     style: ElevatedButton.styleFrom(
                     onPrimary: Colors.white,
                    primary: isFormValid ? null : Colors.grey.shade700,
                     ),
                      onPressed: addOrUpdateNote,
                      child: Text('Save'),

                 );
                    }


            void addOrUpdateNote() async {
                     final isValid = _formKey.currentState!.validate();

                        if (isValid) {
                      final isUpdating = widget.note != null;

                         if (isUpdating) {
                                await updateNote();
                              } else {
                             await addNote();
                                }

                           Navigator.of(context).pop();
                      }
                    }

                    Future updateNote() async {
                     final note = widget.note!.copy(

                      title: title,
                   description: description,
                       );

                     await NotesDatabase.instance.update(note);
                       }

                    Future addNote() async {
                      final note = Note(
                     title: title,

                    description: description,
                  createdTime: DateTime.now(),
                      );

                 await NotesDatabase.instance.create(note);
        }
 }








