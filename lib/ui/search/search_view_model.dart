import 'package:flight_booking_app/data/model/airport_response.dart';
import 'package:flight_booking_app/data/repository/airport_repository.dart';

class SearchViewModel {
  final AirportRepositoryImpl airportRepo = AirportRepositoryImpl();

  Future<AirportResponse?> getAirport(int id) async {
    try {
      final result = await airportRepo.getAirport(id);
      return result;
    } catch (e) {
      throw e;
    }
  }
}