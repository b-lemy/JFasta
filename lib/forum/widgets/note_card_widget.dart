import 'package:flutter/material.dart';
import 'package:flutter_app/models/postmodel.dart';
import 'package:intl/intl.dart';


class NoteCardWidget extends StatelessWidget {
  NoteCardWidget({
    Key? key,
    required this.note,
    required this.index,
  }) : super(key: key);

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    final time = DateFormat.yMMMd().format(note.createdTime);


    return Card(
      elevation: 8,
      shadowColor: Colors.redAccent,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Semantics(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/images/1.jpg"),
                  // article.imageUrl != null
                  //     ? NetworkImage(article.imageUrl!) : null,
                ),
              ),
            ),
            const SizedBox(width: 19),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      note.title,
                      // style: GoogleFonts.openSans(fontSize: 20),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                      note.description,
                      style: const TextStyle(color: Colors.black),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text("Shares",
                          // article.source.name ?? '',
                          style: const TextStyle(color: Colors.black),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis),
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        iconSize: 16.0,
                        color: Colors.red,
                        onPressed: () {},
                      ),
                      Spacer(),
                      Icon(
                        Icons.calendar_today_sharp,
                        size: 15,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                          time,
                          style: const TextStyle(color: Colors.black),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
              IconButton(
                  icon: Icon(Icons.arrow_forward_ios_outlined),
                  color: Colors.black,
                  onPressed: () {}),
          ],
        ),
      ),
    );
  }
}


