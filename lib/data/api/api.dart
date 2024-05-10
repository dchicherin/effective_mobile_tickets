import 'package:dio/dio.dart';
import 'package:effective_mobile_tickets/data/model/ticket_offer_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../constant_values.dart';
import '../model/offer_model.dart';
import '../model/ticket_model.dart';

part 'api.g.dart';

//Предложения
@RestApi(baseUrl: '')
abstract class OffersApi {
  factory OffersApi(Dio dio, {required String baseUrl}) = _OffersApi;
  @GET(kOffersService)
  Future<OfferList> getOffers();
}

//Предложения по билетам
@RestApi(baseUrl: '')
abstract class TicketOffersApi {
  factory TicketOffersApi(Dio dio, {required String baseUrl}) =
      _TicketOffersApi;
  @GET(kTicketOffersService)
  Future<TicketOfferList> getOffers();
}

//Билеты
@RestApi(baseUrl: '')
abstract class TicketApi {
  factory TicketApi(Dio dio, {required String baseUrl}) = _TicketApi;
  @GET(kTicketService)
  Future<TicketList> getOffers();
}
