class LoginRequestModel {
  LoginRequestModel({
    this.phone,
    this.password,
  });
  late final String? phone;
  late final String? password;

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['phone'] = phone;
    _data['password'] = password;
    return _data;
  }
}
