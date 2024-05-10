import '../../data/model/ticket_model.dart';

class TickerData {
  //Билеты с последнего экрана
  List<Ticket> tickets = [];

  TickerData();
  TickerData.copy(TickerData other) {
    tickets = other.tickets;
  }
}
