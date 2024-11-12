import 'package:flight_booking_app/data/model/login_request.dart';
import 'package:flight_booking_app/data/model/login_token.dart';
import 'package:flight_booking_app/data/model/sign_up.dart';
import 'package:flight_booking_app/data/repository/authen_repository.dart';

class LoginViewModel {
  final AuthenRepoImpl authenRepo = AuthenRepoImpl();

  Future<LoginToken?> signin(LoginRequest login) async {
    try {
      final token = await authenRepo.signin(login);
      return token;
    } catch (e) {
      throw e;
    }
  }

  Future<String?> signup(SignUp signUp) async {
    try {
      final message = await authenRepo.signup(signUp);
      return message;
    } catch (e) {
      throw e;
    }
  }
}
