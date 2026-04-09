import 'package:etiket_app/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required this.token,
    required super.id,
    required super.name,
    required super.email,
    required super.createdAt,
    required super.updatedAt,
    super.phone,
    required super.role,
  });

  final String? token;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final user = json["user"]; // ambil object user

    return UserModel(
      token: json["token"],
      id: user["id"],
      name: user["name"],
      email: user["email"],
      createdAt: DateTime.tryParse(user["created_at"] ?? ""),
      updatedAt: DateTime.tryParse(user["updated_at"] ?? ""),
      phone: user["phone"],
      role: user["role"],
    );
  }

  Map<String, dynamic> toJson() => {
    "token": token,
    "id": id,
    "name": name,
    "email": email,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "phone": phone,
    "role": role,
  };
}
