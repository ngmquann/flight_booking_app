class TicketRequest {
  int seatId;
  int flightId;
  int? luggageId;
  String name;
  String phone;
  String email;

  TicketRequest({
    required this.seatId,
    required this.flightId,
    required this.luggageId,
    required this.name,
    required this.phone,
    required this.email,
  });

  factory TicketRequest.fromJson(Map<String, dynamic> json) {
    return TicketRequest(
      seatId: json['seat_id'],
      flightId: json['flight_id'],
      luggageId: json['luggage'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'seat_id': seatId,
      'flight_id': flightId,
      'luggage': luggageId,
      'name': name,
      'phone': phone,
      'email': email,
    };
  }
}
