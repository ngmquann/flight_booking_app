import 'package:flight_booking_app/data/model/profile_request.dart';
import 'package:flight_booking_app/data/model/user_response.dart';
import 'package:flight_booking_app/data/repository/user_repository.dart';

class UserViewModel {
  final UserRepositoryImpl userRepo = UserRepositoryImpl();

  Future<UserResponse?> getUserInfo() async {
    try {
      final result = await userRepo.getUserInfo();
      return result;
    } catch (e) {
      throw e;
    }
  }

  Future<String?> updateProfile(ProfileRequest profileRequest) async {
    try {
      final result = await userRepo.updateProfile(profileRequest);
      return result;
    } catch (e) {
      throw e;
    }
  }
}