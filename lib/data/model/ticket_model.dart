import 'package:json_annotation/json_annotation.dart';

part 'ticket_model.g.dart';

@JsonSerializable()
class TicketList {
  final List<Ticket> tickets;
  TicketList({required this.tickets});
  factory TicketList.fromJson(Map<String, dynamic> json) =>
      _$TicketListFromJson(json);
  Map<String, dynamic> toJson() => _$TicketListToJson(this);
}

@JsonSerializable()
class Ticket {
  final int id;
  final String? badge;
  final Price price;
  final String? provider_name;
  final String company;
  final Departure departure;
  final Arrival arrival;
  final bool? has_transfer;
  final bool? has_visa_transfer;
  final Luggage? luggage;
  final HandLuggage? hand_luggage;
  final bool? is_returnable;
  final bool? is_exchangable;

  Ticket({
    required this.id,
    this.badge,
    required this.price,
    required this.provider_name,
    required this.company,
    required this.departure,
    required this.arrival,
    required this.has_transfer,
    required this.has_visa_transfer,
    required this.luggage,
    required this.hand_luggage,
    required this.is_exchangable,
    required this.is_returnable,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

@JsonSerializable()
class Price {
  final int value;

  Price({required this.value});

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  Map<String, dynamic> toJson() => _$PriceToJson(this);
}

@JsonSerializable()
class Departure {
  final String town;
  final String date;
  final String airport;

  Departure({required this.town, required this.date, required this.airport});

  factory Departure.fromJson(Map<String, dynamic> json) =>
      _$DepartureFromJson(json);
  Map<String, dynamic> toJson() => _$DepartureToJson(this);
}

@JsonSerializable()
class Arrival {
  final String town;
  final String date;
  final String airport;

  Arrival({required this.town, required this.date, required this.airport});

  factory Arrival.fromJson(Map<String, dynamic> json) =>
      _$ArrivalFromJson(json);
  Map<String, dynamic> toJson() => _$ArrivalToJson(this);
}

@JsonSerializable()
class Luggage {
  final bool? hasLuggage;
  final Price? price;

  Luggage({required this.hasLuggage, required this.price});

  factory Luggage.fromJson(Map<String, dynamic> json) =>
      _$LuggageFromJson(json);
  Map<String, dynamic> toJson() => _$LuggageToJson(this);
}

@JsonSerializable()
class HandLuggage {
  final bool? hasHandLuggage;
  final String? size;

  HandLuggage({required this.hasHandLuggage, required this.size});

  factory HandLuggage.fromJson(Map<String, dynamic> json) =>
      _$HandLuggageFromJson(json);
  Map<String, dynamic> toJson() => _$HandLuggageToJson(this);
}
