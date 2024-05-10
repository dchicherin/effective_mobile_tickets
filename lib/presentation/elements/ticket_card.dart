import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constant_values.dart';
import '../../data/model/ticket_model.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
    required this.tickets,
    required this.index,
  });

  final List<Ticket> tickets;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kStandardInsets,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${NumberFormat.decimalPattern('ru').format(tickets[index].price.value)} ₽',
            style: kLargeBoldText,
          ),
          const SizedBox(
            height: kStandardSpacing,
          ),
          Row(
            children: [
              Container(
                width: kRoundSize,
                height: kRoundSize,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(kRoundSize / 2)),
                  color: kLightRed,
                ),
              ),
              const SizedBox(
                width: kSmallSpacerSize,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            DateFormat('hh:mm', 'ru').format(DateTime.parse(tickets[index].departure.date)),
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          ),
                          Text(
                            tickets[index].departure.airport,
                            style: kGreySmallText,
                          ),
                        ],
                      ),
                      const Text(' — '),
                      Column(
                        children: [
                          Text(
                            DateFormat('hh:mm', 'ru').format(DateTime.parse(tickets[index].arrival.date)),
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          ),
                          Text(
                            tickets[index].arrival.airport,
                            style: kGreySmallText,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: kUJSpacing,
                      ),
                      Text(
                          '${((DateTime.parse(tickets[index].arrival.date).millisecondsSinceEpoch - DateTime.parse(tickets[index].departure.date).millisecondsSinceEpoch) / 3600000).toStringAsFixed(1)}'
                          'ч в пути'
                          "${tickets[index].has_transfer == true ? '' : ' / без пересадок'}")
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
