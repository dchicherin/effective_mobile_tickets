import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../constant_values.dart';
import '../../state/notifiers/flight_date_notifier.dart';
import 'action_card.dart';
import 'date_text.dart';

class ActionButtonBar extends ConsumerWidget {
  //Горизонтальный скрол с кнопками для поиска
  const ActionButtonBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime? returnDate = ref.watch(datesProvider).returnDate;
    DateTime startDate = ref.watch(datesProvider).startDate;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          //Установка даты начала
          GestureDetector(
            onTap: () async {
              DateTime? chosenDate = await showDatePicker(
                  initialDate: returnDate,
                  context: context,
                  firstDate: startDate,
                  locale: const Locale('ru'),
                  lastDate: DateTime(2100));
              ref.read(datesProvider.notifier).setEnd(chosenDate);
            },
            child: ActionCard(
              child: ref.watch(datesProvider).returnDate == null
                  ? const Row(
                      children: [
                        Icon(
                          CupertinoIcons.plus,
                          size: 12,
                        ),
                        Text(
                          'Обратно',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    )
                  : DateText(returnDate: returnDate),
            ),
          ),
          const SizedBox(
            width: kSmallSpacerSize,
          ),
          //Установка даты конца
          GestureDetector(
            onTap: () async {
              DateTime? chosenDate = await showDatePicker(
                  initialDate: startDate,
                  context: context,
                  firstDate: DateTime.now(),
                  locale: const Locale('ru'),
                  lastDate: DateTime(2100));
              if (chosenDate != null) {
                ref.read(datesProvider.notifier).setStart(chosenDate);
              }
            },
            child: ActionCard(
              child: DateText(returnDate: startDate),
            ),
          ),
          const SizedBox(
            width: kSmallSpacerSize,
          ),
          //Заглушка
          const ActionCard(
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.person_solid,
                  size: 13,
                  color: kDividerColor,
                ),
                Text(
                  ' 1, эконом',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: kSmallSpacerSize,
          ),
          //Заглушка
          const ActionCard(
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.slider_horizontal_3,
                  size: 14,
                ),
                Text(
                  ' фильтры',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
