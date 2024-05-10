import 'package:json_annotation/json_annotation.dart';

part 'ticket_offer_model.g.dart';

@JsonSerializable()
class TicketOfferList {
  List<TicketOffer> tickets_offers;
  TicketOfferList({required this.tickets_offers});
  factory TicketOfferList.fromJson(Map<String, dynamic> json) =>
      _$TicketOfferListFromJson(json);
  Map<String, dynamic> toJson() => _$TicketOfferListToJson(this);
}

@JsonSerializable()
class TicketOffer {
  String title;
  int id;
  Price price;
  List<String> time_range;
  TicketOffer({
    required this.title,
    required this.price,
    required this.id,
    required this.time_range,
  });
  factory TicketOffer.fromJson(Map<String, dynamic> json) =>
      _$TicketOfferFromJson(json);
  Map<String, dynamic> toJson() => _$TicketOfferToJson(this);
}

@JsonSerializable()
class Price {
  int value;

  Price({required this.value});

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
