import '../../data/model/offer_model.dart';

class SearchStartScreenModelData {
  //Предложения для главного экрана а так же предзаполенение для назачения
  List<Offer> offers = [];
  String origin = '';
  String destination = '';

  SearchStartScreenModelData();
  SearchStartScreenModelData.copy(SearchStartScreenModelData other) {
    offers = other.offers;
  }
}
