import 'package:effective_mobile_tickets/data/model/ticket_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../DI/api_module.dart';
import '../model/ticket_model.dart';

class TicketNotifier extends Notifier<TickerData> {
  @override
  TickerData build() {
    getTickets();
    return TickerData();
  }

  getTickets() async {
    TicketList receivedList = await ApiModule.ticketListApiUtil().getOffers();
    state.tickets = receivedList.tickets;
    state = TickerData.copy(state);
  }
}

final ticketProvider = NotifierProvider<TicketNotifier, TickerData>(() {
  return TicketNotifier();
});
