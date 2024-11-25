import 'package:flight_booking_app/data/model/info_booking_response.dart';
import 'package:flight_booking_app/data/repository/booking_repository.dart';

class BookingViewModel {
  final BookingRepositoryImpl bookingRepo = BookingRepositoryImpl();

  Future<InfoBookingResponse?> getInfoBooking(int flightId, String seatClass) async {
    try {
      final result = await bookingRepo.getInfoBooking(flightId, seatClass);
      return result;
    } catch (e) {
      throw e;
    }
  }
}