
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class AddTodoButton extends StatelessWidget {

  const AddTodoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.add_box_rounded),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.0)
                  )
              ),
              context: context, builder: (context) {
              return Container(
                  height: MediaQuery.of(context).copyWith().size.height * 0.85,
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
                      FlatButton(
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text("Submit"),
                        shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                      ),

                    ],
                  ),

                          body: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'New Post',
                                            border:InputBorder.none
                                            // OutlineInputBorder(
                                            //     borderRadius: BorderRadius.all(Radius.circular(20.0))
                                            //
                                            // ),
                                           ),
                                            cursorColor: Colors.black,
                                       ),
                                ),
                                      Divider(
                                              color: Colors.black,
                                              thickness: 0.2,
                                           ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                                decoration: InputDecoration(
                                                hintText: 'Write a note',
                                                border: InputBorder.none,
                                                 ),
                                                cursorColor: Colors.black45,
                                                maxLines: 6,
                                                ),
                                      ),
                                   const Divider(
                                            color: Colors.black,
                                               thickness: 0.2,
                                             ),

                                  FlatButton(
                                    textColor: Colors.black,
                                    onPressed: () {},
                                    child: Text("Upload photo"),
                                    shape: CircleBorder(side: BorderSide(color: Colors.transparent)),

                                  ),

                                const Divider(
                                  color: Colors.black,
                                  thickness: 0.2,
                                ),


                                      // Row(
                                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      //   children: [
                                      //     FlatButton(
                                      //
                                      //            onPressed: () {
                                      //
                                      //                     },
                                      //              child: const Text('Add'),
                                      //                ),
                                      //     FlatButton(
                                      //       onPressed: () {
                                      //
                                      //       },
                                      //       child: const Text('close'),
                                      //     ),
                                      //   ],
                                      // ),
                               ],

                            ),
                          ),


                ),
              );
            },
            );
          }

    );
  }
}

//     return GestureDetector(
//         onTap: () {
//           Navigator.of(context).push(HeroDialogRoute(builder: (context) {
//             return const _AddTodoPopupCard();
//           }));
//         },
//         child: Hero(
//           tag: _heroAddTodo,
//           createRectTween: (begin, end) {
//             return CustomRectTween(begin: begin, end: end);
//           },
//           child: Material(
//             color: Colors.white60,
//             elevation: 2,
//             shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
//             child: const Icon(
//               Icons.add_rounded,
//               size: 56,
//             ),
//           ),
//         ),
//
//     );
//   }
// }
//
// /// Tag-value used for the add post popup button.
// const String _heroAddTodo = 'add-todo-hero';
//
// /// {@template add_todo_popup_card}
// /// Popup card to add a new [post]. Should be used in conjuction with
// /// [HeroDialogRoute] to achieve the popup effect.
// ///
// /// Uses a [Hero] with tag [_heroAddTodo].
// /// {@endtemplate}
// class _AddTodoPopupCard extends StatelessWidget {
//   /// {@macro add_todo_popup_card}
//   const _AddTodoPopupCard({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(32.0),
//         child: Hero(
//           tag: _heroAddTodo,
//           createRectTween: (begin, end) {
//             return CustomRectTween(begin: begin, end: end);
//           },
//           child: Material(
//             color: Colors.white54,
//             elevation: 2,
//             shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
