class FlightDatesModel {
  //Дата отбытия и прибытия
  DateTime startDate = DateTime.now();
  DateTime? returnDate;
  FlightDatesModel();
  FlightDatesModel.copy(FlightDatesModel other) {
    startDate = other.startDate;
    returnDate = other.returnDate;
  }
}
