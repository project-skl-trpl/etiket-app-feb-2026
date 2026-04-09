class UserEntity {
  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    this.phone,
    required this.role,
  });

  final int? id;
  final String? name;
  final String? email;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic phone;
  final String? role;
}
