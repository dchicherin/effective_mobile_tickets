// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketList _$TicketListFromJson(Map<String, dynamic> json) => TicketList(
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketListToJson(TicketList instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
    };

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      provider_name: json['provider_name'] as String?,
      company: json['company'] as String,
      departure: Departure.fromJson(json['departure'] as Map<String, dynamic>),
      arrival: Arrival.fromJson(json['arrival'] as Map<String, dynamic>),
      has_transfer: json['has_transfer'] as bool?,
      has_visa_transfer: json['has_visa_transfer'] as bool?,
      luggage: json['luggage'] == null
          ? null
          : Luggage.fromJson(json['luggage'] as Map<String, dynamic>),
      hand_luggage: json['hand_luggage'] == null
          ? null
          : HandLuggage.fromJson(json['hand_luggage'] as Map<String, dynamic>),
      is_exchangable: json['is_exchangable'] as bool?,
      is_returnable: json['is_returnable'] as bool?,
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'provider_name': instance.provider_name,
      'company': instance.company,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'has_transfer': instance.has_transfer,
      'has_visa_transfer': instance.has_visa_transfer,
      'luggage': instance.luggage,
      'hand_luggage': instance.hand_luggage,
      'is_returnable': instance.is_returnable,
      'is_exchangable': instance.is_exchangable,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'value': instance.value,
    };

Departure _$DepartureFromJson(Map<String, dynamic> json) => Departure(
      town: json['town'] as String,
      date: json['date'] as String,
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$DepartureToJson(Departure instance) => <String, dynamic>{
      'town': instance.town,
      'date': instance.date,
      'airport': instance.airport,
    };

Arrival _$ArrivalFromJson(Map<String, dynamic> json) => Arrival(
      town: json['town'] as String,
      date: json['date'] as String,
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$ArrivalToJson(Arrival instance) => <String, dynamic>{
      'town': instance.town,
      'date': instance.date,
      'airport': instance.airport,
    };

Luggage _$LuggageFromJson(Map<String, dynamic> json) => Luggage(
      hasLuggage: json['hasLuggage'] as bool?,
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LuggageToJson(Luggage instance) => <String, dynamic>{
      'hasLuggage': instance.hasLuggage,
      'price': instance.price,
    };

HandLuggage _$HandLuggageFromJson(Map<String, dynamic> json) => HandLuggage(
      hasHandLuggage: json['hasHandLuggage'] as bool?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$HandLuggageToJson(HandLuggage instance) =>
    <String, dynamic>{
      'hasHandLuggage': instance.hasHandLuggage,
      'size': instance.size,
    };
