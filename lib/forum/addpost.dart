
import 'package:flutter/material.dart';
 


class AddTodoButton extends StatefulWidget {

  const AddTodoButton({Key? key}) : super(key: key);

  @override
  State<AddTodoButton> createState() => _AddTodoButtonState();
}

class _AddTodoButtonState extends State<AddTodoButton> {
 
 


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
              return GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Container(
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
                      // actions: [
                      //   _buildSubmitButton(),

                      // ],
                    ),

                            body:Padding(
                                padding: const EdgeInsets.all(28.0),
                                child: Form(
                                  child: ListView(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          
                                          onSaved: (String? value){
                                            // _formData['title'] = value;
                                          },
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
                                              child: TextFormField(
                                               
                                                onSaved: (String? value){
                                                  // _formData['description'] = value;
                                                },
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

                                     ],

                                  ),
                                ),
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
