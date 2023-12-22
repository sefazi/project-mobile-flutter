class User {
  int? id;
  String? username;
  String? email;
  String? email_verified_at;
  String? password;
  String? remember_token;
  String? created_at;
  String? updated_at;

  User(
      {this.id,
      this.username,
      this.email,
      this.email_verified_at,
      this.password,
      this.remember_token,
      this.created_at,
      this.updated_at});

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      email_verified_at: json['email_verified_at'],
      password: json['password'],
      remember_token: json['remember_token'],
      created_at: json['created_at'],
      updated_at: json['updated_at']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'email_verified_at': email_verified_at,
        'password': password,
        'remember_token': remember_token,
        'created_at': created_at,
        'updated_at': updated_at,
      };
}

class UserResponse {
  User? data;
  bool? success;
  String? message;

  UserResponse({
    this.data,
    this.success,
    this.message,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        data: json['data'] != null ? User.fromJson(json['data']) : null,
        success: json['success'],
        message: json['message'],
      );
}
