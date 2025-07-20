class Post {
  final int id;
  final String titulo;
  final String corpo;

  Post({required this.id, required this.titulo, required this.corpo});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      titulo: json['title'],
      corpo: json['body'],
    );
  }
}
