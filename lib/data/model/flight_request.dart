class FlightRequest {
  int departureAirport;
  int arrivalAirport;
  String departureTime;
  String seatClass;

  FlightRequest({
    required this.departureAirport,
    required this.arrivalAirport,
    required this.departureTime,
    required this.seatClass,
  });

  factory FlightRequest.fromJson(Map<String, dynamic> json) {
    return FlightRequest(
      departureAirport: json['departureAirport'],
      arrivalAirport: json['arrivalAirport'],
      departureTime: json['departureTime'],
      seatClass: json['seatClass'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'departure_airport': departureAirport,
      'arrival_airport': arrivalAirport,
      'departure_time': departureTime,
      'seat_class': seatClass,
    };
  }
}
