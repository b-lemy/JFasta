import 'dart:convert';

final String tablePosts = 'posts';

class PostFields {
  static final List<String> values = [id, Title, Description, Time];
  static final String id = '_id';
  static final String Title = 'Title';
  static final String Description = 'Description';
  static final String Time = 'Time';
}

class Post {
  final int? id;
  final String Title;
  final String Description;
  final DateTime createdTime;
  // final String image;
  // final String userEmail;
  // final String userId;

  const Post({
    this.id,
    required this.Title,
    required this.Description,
    required this.createdTime,
    // required this.image,
    // required this.userEmail,
    // required this.userId,
  });

  Post copy({
    int? id,
    String? Title,
    String? Description,
    DateTime? createdTime,
  }) =>
      Post(
        id: id ?? this.id,
        Title: Title ?? this.Title,
        Description: Description ?? this.Description,
        createdTime: createdTime ?? this.createdTime,
      );

  static Post fromJson(Map<String, Object?> json) => Post(
        id: json[PostFields.id] as int?,
        Title: json[PostFields.Title] as String,
        Description: json[PostFields.Description] as String,
        createdTime: DateTime.parse(json[PostFields.Time] as String), 
      );

  Map<String, Object?> toJson() => {
        PostFields.id: id,
        PostFields.Title: Title,
        PostFields.Description: Description,
        PostFields.Time: createdTime.toIso8601String(),
      };
}
