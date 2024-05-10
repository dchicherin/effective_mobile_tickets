import 'package:effective_mobile_tickets/state/model/origin_destination_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../DI/api_module.dart';

class OriginDestinationNotifier extends Notifier<OriginDestinationModel> {
  @override
  OriginDestinationModel build() {
    getLastOrigin();
    return OriginDestinationModel();
  }

  getLastOrigin() async {
    String lastOrigin = await ApiModule.prefUtil().getLastOrigin();
    state.origin = lastOrigin;
    state = OriginDestinationModel.copy(state);
  }

  setLastOrigin(String origin) {
    ApiModule.prefUtil().setLastOrigin(origin);
  }

  setOrigin(String newOrigin) {
    state.origin = newOrigin;
    state = OriginDestinationModel.copy(state);
  }

  setDestination(String newDestination) {
    state.destination = newDestination;
    state = OriginDestinationModel.copy(state);
  }
}

final odProvider =
    NotifierProvider<OriginDestinationNotifier, OriginDestinationModel>(() {
  return OriginDestinationNotifier();
});
