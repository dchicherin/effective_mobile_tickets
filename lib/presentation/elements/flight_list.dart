import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../constant_values.dart';
import '../../data/model/ticket_offer_model.dart';
import '../../mock_data.dart';
import '../../state/notifiers/ticket_model_notifier.dart';

class FlightOfferList extends ConsumerWidget {
  //Список предложений по билетам
  const FlightOfferList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TicketOffer> ticketOffers = ref.watch(ticketOfferProvider).offers;
    return ticketOffers.isEmpty
        //Индикатор загрузки
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: [
              //Построение списка по полученным данным
              ListView.builder(
                shrinkWrap: true,
                itemCount: max(ticketOffers.length, 3),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: kRoundSize,
                            height: kRoundSize,
                            decoration: BoxDecoration(
                                color: flightColors[index],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(kRoundSize / 2))),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ticketOffers[index].title,
                                      style: const TextStyle(
                                        height: 1.1,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    Text(
                                      '${NumberFormat.decimalPattern('ru').format(ticketOffers[index].price.value)} ₽ ›',
                                      style: const TextStyle(
                                          color: kDarkBlue,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                ),
                                Text(
                                  ticketOffers[index].time_range.reduce(
                                      (value, element) => '$value  $element'),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      const SizedBox(
                        height: kStandardSpacing,
                      ),
                    ],
                  );
                },
              ),
              //Заглушка
              const Text(
                'Показать все',
                style: TextStyle(
                  color: kDarkBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          );
  }
}
