import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

class Post {
  Post({
    required this.id,
    required this.image,
    required this.price,
    required this.name,
    required this.description,
  });

  int id;
  String name;
  String price;
  String image;
  String description;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        image: json["image"],
        description: json["description"],
      );
}
