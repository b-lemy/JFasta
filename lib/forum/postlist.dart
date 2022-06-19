
// import 'package:flutter/material.dart';
// import 'package:flutter_app/quiz/widgets/avatar.dart';
// import 'package:flutter_app/quiz/widgets/helpers.dart';

// import 'package:scoped_model/scoped_model.dart';

// class postlist extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return ScopedModelDescendant<MainModel>(
      
//         return ListView.builder(
//           itemBuilder: (BuildContext context, int index) {
//             return Dismissible(
//               key: Key(model.allPosts[index].Title),
//               onDismissed: (DismissDirection direction) {
//                 if (direction == DismissDirection.endToStart) {
//                   model.selectPost(index);
//                   model.deletePost();
//                 } else if (direction == DismissDirection.startToEnd) {
//                   print('Swiped start to end');
//                 } else {
//                   print('Other swiping');
//                 }
//               },
//               background: Container(color: Colors.red),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Avatar.small(url: Helpers.randomPictureUrl(), onTap: () {  },),
//                     title: Text(model.allPosts[index].Title),
//                     subtitle:Text(model.allPosts[index].Description),

//                     // trailing: _buildEditButton(context, index, model),
//                   ),
//                   Divider()
//                 ],
//               ),
//             );
//           },
//           itemCount: model.allPosts.length,
//         );
      
//   }
// }
