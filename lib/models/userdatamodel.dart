

// models/user_model.dart
class UserModel {
  final String name;
  final String avatar;
  final String emailId;
  final String mobile;
  final String country;
  final String state;
  final String district;

  UserModel({
    required this.name,
    required this.avatar,
    required this.emailId,
    required this.mobile,
    required this.country,
    required this.state,
    required this.district,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      avatar: json['avatar'],
      emailId: json['emailId'],
      mobile: json['mobile'],
      country: json['country'],
      state: json['state'],
      district: json['district'],
    );
  }
}
