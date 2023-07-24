// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Auth {
  String? username;
  String? password;
  Auth({
    this.username,
    this.password,
  });

  Auth copyWith({
    String? username,
    String? password,
  }) {
    return Auth(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }

  factory Auth.fromMap(Map<String, dynamic> map) {
    return Auth(
      username: map['username'] != null ? map['username'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Auth.fromJson(String source) =>
      Auth.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Auth(username: $username, password: $password)';

  @override
  bool operator ==(covariant Auth other) {
    if (identical(this, other)) return true;

    return other.username == username && other.password == password;
  }

  @override
  int get hashCode => username.hashCode ^ password.hashCode;
}
