import 'dart:convert';

class UserAvatar {
  final String name;
  final String imageUrl;
  UserAvatar({
    this.name = '',
    required this.imageUrl,
  });

  UserAvatar copyWith({
    String? name,
    String? imageUrl,
  }) {
    return UserAvatar(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  factory UserAvatar.fromMap(Map<String, dynamic> map) {
    return UserAvatar(
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAvatar.fromJson(String source) =>
      UserAvatar.fromMap(json.decode(source));

  @override
  String toString() => 'UserAvatar(name: $name, imageUrl: $imageUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserAvatar &&
        other.name == name &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => name.hashCode ^ imageUrl.hashCode;
}
