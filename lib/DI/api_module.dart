import 'package:dio/dio.dart';

import '../constant_values.dart';
import '../data/api/api.dart';
import '../data/api/pref_getter.dart';

class ApiModule {
  static OffersApi? _offersApi;
  static TicketOffersApi? _ticketOffersApi;
  static PrefGetter? _prefGetter;
  static TicketApi? _ticketApi;

  //Получение предлажений для стартого экрана
  static OffersApi apiUtil() {
    _offersApi ??= OffersApi(Dio(), baseUrl: kApiAddress);
    return _offersApi!;
  }

  //Получения предложений по билетам
  static TicketOffersApi ticketApiUtil() {
    _ticketOffersApi ??= TicketOffersApi(Dio(), baseUrl: kApiAddress);
    return _ticketOffersApi!;
  }

  //Получение списка билетов для финального экрана
  static TicketApi ticketListApiUtil() {
    _ticketApi ??= TicketApi(Dio(), baseUrl: kApiAddress);
    return _ticketApi!;
  }

//Получение предзаполенного значения для поля откуда
  static PrefGetter prefUtil() {
    _prefGetter ??= PrefGetter();
    return _prefGetter!;
  }
}
