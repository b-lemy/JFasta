import 'package:flutter/material.dart';
import 'package:flutter_app/forum/addpost.dart';
import 'package:intl/intl.dart';

import '../db/postdatabase.dart';
import '../models/postmodel.dart';


class postdetails extends StatefulWidget {
  final int noteId;
  const postdetails({Key? key , required this.noteId}) : super(key: key);

  @override
  State<postdetails> createState() => _postdetailsState();
}

class _postdetailsState extends State<postdetails> {
  late Note note;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNote();
  }

  Future refreshNote() async {
    setState(() => isLoading = true);

    this.note = await NotesDatabase.instance.readNote(widget.noteId);

    setState(() => isLoading = false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.bookmark_outline,
                    size: 20,
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey,
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_outline,
                    size: 20,
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey,
                child: IconButton(
                  icon: Icon(
                    Icons.share_outlined,
                    size: 20,
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
            ),
          ),
            IconButton(
              icon: Icon(Icons.edit_outlined),
              onPressed: () async {
                    if (isLoading) return;

                        await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddTodoButton(note: note),
                ));

                 refreshNote();
                }),
                  IconButton(
                  icon: Icon(Icons.delete),
                   onPressed: () async {
                    await NotesDatabase.instance.delete(widget.noteId);

                  Navigator.of(context).pop();
                    },
                  ),

        ],
      ),

      body:
         isLoading
         ? Center(child: CircularProgressIndicator())
        : Padding(
            padding: const EdgeInsets.all(32),
            child: ListView(
              children: [
                Text(
                  note.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage('assets/images/1.jpg'),
                    ),
                     SizedBox(
                      width: 8,
                    ),
                    Text("Brian"
                        // '$author, '
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      DateFormat.yMMMd().format(note.createdTime),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 16,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text(
                          '6.5K Views',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,

                          ),
                        )
                      ],
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text(
                          '106 Likes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,

                          ),
                        )
                      ],
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text(
                          '55 Saves',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            // fontWeight: FontWeight.w100,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    // child: Image.asset(image),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:  note.description,
                       style: TextStyle

                          (
                          color: Colors.black,
                          fontSize: 18,
                          height: 1.7,
                          wordSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

        ),

    );
  }
}




