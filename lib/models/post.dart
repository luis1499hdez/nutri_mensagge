class Post {
  final String id;
  final String descripcion;

  Post(this.id, this.descripcion);

  factory Post.fromJason(dynamic json) {
    return Post(json['id'], json['descripcion']);
  }

  @override
  String toString() {
    return "User(id: $id, descripcion: $descripcion)";
  }
}
