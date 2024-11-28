import 'package:flight_booking_app/data/model/ticket_booked_info.dart';
import 'package:flight_booking_app/ui/profile/transaction_card.dart';
import 'package:flutter/material.dart';

class TransactionHistoryPage extends StatefulWidget {
  final List<TicketBookedInfo> bookingList;

  const TransactionHistoryPage({required this.bookingList, super.key});

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: widget.bookingList.length,
      itemBuilder: (context, index) {
        return TransactionCard(transaction: widget.bookingList[index]);
      },
    );
  }
}
