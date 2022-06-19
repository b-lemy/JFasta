import 'package:flutter/material.dart';
import 'package:flutter_app/db/postdatabase.dart';
import 'package:flutter_app/forum/addpost.dart';
import 'package:flutter_app/forum/postdetails.dart';
import 'package:flutter_app/models/postmodel.dart';
import 'package:google_fonts/google_fonts.dart';

class forumintro extends StatefulWidget {
  @override
  State<forumintro> createState() => _forumintroState();
}

class _forumintroState extends State<forumintro> {
  late List<Post> posts;
  bool isLoading = false;

  @override
  void initState() {
    refreshPosts();
    super.initState();
  }

  @override
  void dispose() {
    PostDatabase.instance.close();

    super.dispose();
  }

  refreshPosts() async {
    setState(() => isLoading = true);

    this.posts = await PostDatabase.instance.readAllPost();

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
        body: ListView(children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for articles, author, and tags',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Card(
            child: isLoading
                ? CircularProgressIndicator()
                : posts.isEmpty
                    ? Text(
                        'No posts',
                        style: TextStyle(color: Colors.black),
                      )
                    : ListView.builder(
                        itemCount: posts.length,
                        itemBuilder: (BuildContext context, int index) {
                          final post = posts[index];

                          return GestureDetector(
                            onTap: () async {
                              await Navigator.of(context)
                                  .push(MaterialPageRoute(
                                builder: (context) =>
                                    postdetails(
                                      ),
                              ));
                              refreshPosts();
                            },
                            // child: PostCardWidget(post: post, index: index),
                          );
                        },
                      ),
          ),
        ]),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: AddTodoButton(),
        ),
      ),
    );
  }
}
