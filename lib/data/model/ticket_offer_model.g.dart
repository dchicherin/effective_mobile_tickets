// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketOfferList _$TicketOfferListFromJson(Map<String, dynamic> json) =>
    TicketOfferList(
      tickets_offers: (json['tickets_offers'] as List<dynamic>)
          .map((e) => TicketOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketOfferListToJson(TicketOfferList instance) =>
    <String, dynamic>{
      'tickets_offers': instance.tickets_offers,
    };

TicketOffer _$TicketOfferFromJson(Map<String, dynamic> json) => TicketOffer(
      title: json['title'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      time_range: (json['time_range'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TicketOfferToJson(TicketOffer instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'price': instance.price,
      'time_range': instance.time_range,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'value': instance.value,
    };
