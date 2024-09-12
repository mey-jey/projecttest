class Doctor {
  final int id;
  final String name;
  final String email;

  Doctor({required this.id,required this.name, required this.email});

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
}