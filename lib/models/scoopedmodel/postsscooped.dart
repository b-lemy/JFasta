
import 'package:flutter_app/models/postmodel.dart';
import 'package:scoped_model/scoped_model.dart';


class PostsModel extends Model {
  List<Post> _posts = [];

  List<Post> get post {
    return List.from(_posts);
  }

  void addProduct(Post post) {
    _posts.add(post);
  }

  void updateProduct(int index, Post post) {
    _posts[index] = post;
  }

  void deleteProduct(int index) {
    _posts.removeAt(index);
  }
}
