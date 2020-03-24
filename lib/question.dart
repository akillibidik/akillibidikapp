class Question {
  final int id;
  final String name;
  final String surname;
  final String role;
  final String grade;
  final String email;
  final String language;

  Question(
      {this.id,
      this.name,
      this.surname,
      this.role,
      this.grade,
      this.email,
      this.language});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      name: json['name'],
      surname: json['surname'],
      role: json['role'],
      grade: json['grade'],
      email: json['email'],
      language: json['language'],
    );
  }
}
