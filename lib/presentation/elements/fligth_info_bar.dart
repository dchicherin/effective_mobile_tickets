import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../constant_values.dart';
import '../../state/notifiers/flight_date_notifier.dart';
import '../../state/notifiers/origin_destination_notifier.dart';

class FlightInfoBar extends ConsumerWidget {
  //Виджет с отображением итоговой информации и кнопкой назад
  const FlightInfoBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(color: kLighterBGColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.arrow_back,
                  color: kDarkBlue,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${ref.read(odProvider).origin} - ${ref.read(odProvider).destination}',
                  style: kLargeBoldText,
                ),
                Text(
                  '${DateFormat('dd MMMM', 'ru').format(ref.read(datesProvider).startDate)}, 1 пассажир',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
