class LoginResponse {
  late int statusCode;
  late bool error;
  late String message;
  String? token;

  LoginResponse({required this.statusCode, required this.error, required this.message, this.token});
}
