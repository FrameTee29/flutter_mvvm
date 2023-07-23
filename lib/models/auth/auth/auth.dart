import 'dart:convert';

import 'package:collection/collection.dart';

class Auth {
  String? name;
  String? nickName;

  Auth({this.name, this.nickName});

  @override
  String toString() => 'Auth(name: $name, nickName: $nickName)';

  factory Auth.fromMap(Map<String, dynamic> data) => Auth(
        name: data['name'] as String?,
        nickName: data['nickName'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'nickName': nickName,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Auth].
  factory Auth.fromJson(String data) {
    return Auth.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Auth] to a JSON string.
  String toJson() => json.encode(toMap());

  Auth copyWith({
    String? name,
    String? nickName,
  }) {
    return Auth(
      name: name ?? this.name,
      nickName: nickName ?? this.nickName,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Auth) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => name.hashCode ^ nickName.hashCode;
}
