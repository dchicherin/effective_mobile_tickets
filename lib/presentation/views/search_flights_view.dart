import 'package:effective_mobile_tickets/constant_values.dart';
import 'package:flutter/material.dart';
import '../elements/action_button_bar.dart';
import '../elements/flight_list.dart';
import '../elements/origin_destination_frame.dart';
import '../elements/show_all_button.dart';

class SearchFightsView extends StatelessWidget {
  //Экран с предварительным просмотром билетов
  const SearchFightsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kStandardInsets,
          //Поля куда и откуда
          child: SingleChildScrollView(
            child: Column(
              children: [
                const OriginDestinationFrame(),
                const SizedBox(
                  height: 12,
                ),
                //Кнопки действий
                const ActionButtonBar(),
                const SizedBox(
                  height: 12,
                ),
                //Список полученных предложений по рейсам
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kDarkTableColor,
                    borderRadius: BorderRadius.all(kStandardRadius),
                  ),
                  child: const Padding(
                    padding: kStandardInsets,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Прямые рейсы',
                          style: kLargeBoldText,
                        ),
                        SizedBox(
                          height: kStandardSpacing,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: FlightOfferList(),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                //Кнопка перехода на следующий экран
                ShowAllButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
