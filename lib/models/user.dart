class User {
  final int id;
  final String name;
  final String email;
  final String? password;
  final String? image;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'image': image,
    };
  }
}
