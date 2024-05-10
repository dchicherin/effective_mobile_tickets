import 'package:effective_mobile_tickets/data/model/ticket_offer_model.dart';

class TickerModelData {
  //Предложения по билетам
  List<TicketOffer> offers = [];

  TickerModelData();
  TickerModelData.copy(TickerModelData other) {
    offers = other.offers;
  }
}
