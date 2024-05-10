class OriginDestinationModel {
  //Поля куда и откуда
  String origin = '';
  String destination = '';
  OriginDestinationModel();
  OriginDestinationModel.copy(OriginDestinationModel other) {
    origin = other.origin;
    destination = other.destination;
  }
}
