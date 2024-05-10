import 'package:effective_mobile_tickets/data/model/ticket_offer_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../DI/api_module.dart';
import '../model/ticket_offer_model.dart';

class TicketModelNotifier extends Notifier<TickerModelData> {
  @override
  TickerModelData build() {
    getOffers();
    return TickerModelData();
  }

  getOffers() async {
    TicketOfferList receivedList = await ApiModule.ticketApiUtil().getOffers();
    state.offers = receivedList.tickets_offers;
    state = TickerModelData.copy(state);
  }
}

final ticketOfferProvider =
    NotifierProvider<TicketModelNotifier, TickerModelData>(() {
  return TicketModelNotifier();
});
