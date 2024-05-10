import 'package:json_annotation/json_annotation.dart';

part 'offer_model.g.dart';

@JsonSerializable()
class OfferList {
  List<Offer> offers;
  OfferList({required this.offers});
  factory OfferList.fromJson(Map<String, dynamic> json) =>
      _$OfferListFromJson(json);
  Map<String, dynamic> toJson() => _$OfferListToJson(this);
}

@JsonSerializable()
class Offer {
  int id;
  String title;
  String town;
  Price price;

  Offer({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
  Map<String, dynamic> toJson() => _$OfferToJson(this);
}

@JsonSerializable()
class Price {
  int value;

  Price({required this.value});

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
