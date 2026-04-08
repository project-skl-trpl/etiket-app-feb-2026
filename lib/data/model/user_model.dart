import 'package:etiket_app/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required this.token,
    required this.user,
    required super.id,
    required super.name,
    required super.email,
    required super.emailVerifiedAt,
    required super.twoFactorSecret,
    required super.twoFactorRecoveryCodes,
    required super.twoFactorConfirmedAt,
    required super.createdAt,
    required super.updatedAt,
    required super.role,
  });

  final String? token;
  final UserModel? user;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json["token"],
      user: json["user"] == null ? null : UserModel.fromJson(json["user"]),
      id: null,
      name: '',
      email: '',
      emailVerifiedAt: null,
      twoFactorSecret: null,
      twoFactorRecoveryCodes: null,
      twoFactorConfirmedAt: null,
      createdAt: null,
      updatedAt: null,
      role: '',
    );
  }

  Map<String, dynamic> toJson() => {"token": token, "user": user?.toJson()};
}
