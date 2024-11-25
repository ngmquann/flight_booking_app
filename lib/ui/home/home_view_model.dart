import 'package:flight_booking_app/data/model/home_response.dart';
import 'package:flight_booking_app/data/repository/home_repository.dart';

class HomeViewModel {
  final HomeRepositoryImpl homeRepo = HomeRepositoryImpl();

  Future<HomeResponse?> getHomeInfo() async {
    try {
      final result = await homeRepo.getHomeInfo();
      return result;
    } catch (e) {
      throw e;
    }
  }
}