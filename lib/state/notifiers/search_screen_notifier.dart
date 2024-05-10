import 'package:effective_mobile_tickets/DI/api_module.dart';
import 'package:effective_mobile_tickets/state/model/search_screen_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/model/offer_model.dart';

class SearchStartScreenNotifier extends Notifier<SearchStartScreenModelData> {
  @override
  SearchStartScreenModelData build() {
    getOffers();
    return SearchStartScreenModelData();
  }

  getOffers() async {
    OfferList receivedList = await ApiModule.apiUtil().getOffers();
    state.offers = receivedList.offers;
    state = SearchStartScreenModelData.copy(state);
  }
}

final startSearchProvider =
    NotifierProvider<SearchStartScreenNotifier, SearchStartScreenModelData>(() {
  return SearchStartScreenNotifier();
});
