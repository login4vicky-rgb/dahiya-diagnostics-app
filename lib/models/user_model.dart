class UserModel {
  final int userId;
  final String fullName;
  final String email;
  final String phone;

  UserModel({
    required this.userId,
    required this.fullName,
    required this.email,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json["user_id"],
      fullName: json["full_name"] ?? "",
      email: json["email"] ?? "",
      phone: json["phone"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "user_id": userId,
      "full_name": fullName,
      "email": email,
      "phone": phone,
    };
  }
}
