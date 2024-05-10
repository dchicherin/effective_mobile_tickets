import 'package:effective_mobile_tickets/state/model/flight_dates_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlightDateNotifier extends Notifier<FlightDatesModel> {
  @override
  FlightDatesModel build() {
    return FlightDatesModel();
  }

  setStart(DateTime newStart) {
    state.startDate = newStart;
    state = FlightDatesModel.copy(state);
  }

  setEnd(DateTime? newEnd) {
    state.returnDate = newEnd;
    state = FlightDatesModel.copy(state);
  }
}

final datesProvider =
    NotifierProvider<FlightDateNotifier, FlightDatesModel>(() {
  return FlightDateNotifier();
});
