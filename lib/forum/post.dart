import 'package:flutter/material.dart';
import 'package:flutter_app/forum/postdetails.dart';
import 'package:google_fonts/google_fonts.dart';

class post extends StatelessWidget {
  const post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Semantics(

              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
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
                  Text( "Title",
                      // article.title!,
                      style: GoogleFonts.openSans(fontSize:20),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(
                    height: 12,
                  ),
                  Text( "Description",
                      // article.author,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 8),
                  Row(
                    children:  [
                      Text("Shares",
                          // article.source.name ?? '',
                          style: const TextStyle(color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis),
                       IconButton(
                           icon: Icon(Icons.favorite_border),
                           iconSize: 16.0,
                           color: Colors.red,
                           onPressed:(){

                       },),
                       Spacer(),
                       Icon(
                        Icons.calendar_today_sharp,
                        size: 15,
                      ),
                       SizedBox(
                        width: 8,
                      ),
                      Text( "20 dec",
                          // publishedAt ?? '',
                          style: const TextStyle(color: Colors.grey),
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
                icon:Icon(Icons.arrow_forward_ios_outlined),
                color: Colors.black,
               onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>postdetails())),
            ),

          ],
        ),

    );

  }
}