import 'dart:convert';

class UserAvatar {
  final String username;
  final String imageUrl;
  UserAvatar({
    this.username = '',
    required this.imageUrl,
  });

  UserAvatar copyWith({
    String? username,
    String? imageUrl,
  }) {
    return UserAvatar(
      username: username ?? this.username,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'imageUrl': imageUrl,
    };
  }

  factory UserAvatar.fromMap(Map<String, dynamic> map) {
    return UserAvatar(
      username: map['username'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAvatar.fromJson(String source) =>
      UserAvatar.fromMap(json.decode(source));

  @override
  String toString() => 'UserAvatar(username: $username, imageUrl: $imageUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserAvatar &&
        other.username == username &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => username.hashCode ^ imageUrl.hashCode;
}
