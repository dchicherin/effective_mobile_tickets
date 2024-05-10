import 'package:effective_mobile_tickets/constant_values.dart';
import 'package:effective_mobile_tickets/state/notifiers/origin_destination_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../views/search_flights_view.dart';
import '../views/search_view.dart';
import 'icons_e_m_icons.dart';

class OriginDestinationFields extends ConsumerWidget {
  //Поля вылета и назначения
  OriginDestinationFields({
    super.key,
    required this.shouldOpenScreen,
  });
  final bool shouldOpenScreen;
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _originController.text = ref.watch(odProvider).origin;
    _destinationController.text = ref.watch(odProvider).destination;
    return Padding(
      padding: kStandardInsets,
      child: Column(
        children: [
          Row(
            children: [
              //Если на первом экране - иконки нет
              shouldOpenScreen ? Container() : const Icon(IconsEM.planedepart),
              shouldOpenScreen
                  ? Container()
                  : const SizedBox(
                      width: kStandardSpacing,
                    ),
              Expanded(
                child: TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp("[а-яА-Я\\s]"))
                  ],
                  textCapitalization: TextCapitalization.words,
                  decoration: const InputDecoration.collapsed(
                      hintText: 'Откуда - Москва'),
                  style: kInputTextStyle,
                  controller: _originController,
                  onChanged: (text) {
                    ref.read(odProvider.notifier).setLastOrigin(text);
                    ref.read(odProvider.notifier).setOrigin(text);
                  },
                ),
              ),
            ],
          ),
          const Divider(
            color: kDividerColor,
          ),
          Row(
            children: [
              shouldOpenScreen
                  ? Container()
                  : const Icon(IconsEM.magnifyingglass),
              shouldOpenScreen
                  ? Container()
                  : const SizedBox(
                      width: kStandardSpacing,
                    ),
              Expanded(
                child: TextField(
                  readOnly: shouldOpenScreen,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp("[а-яА-Я\\s]"))
                  ],
                  textCapitalization: TextCapitalization.words,
                  onTap: () {
                    //При нажатии на первом экране открывает страничку
                    if (shouldOpenScreen) {
                      //Cupertino style modal navigation
                      showCupertinoModalBottomSheet(
                        context: context,
                        builder: (context) => const SearchView(),
                      );
                    }
                  },
                  onChanged: (text) {
                    ref.read(odProvider.notifier).setDestination(text);
                  },
                  onSubmitted: (text) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SearchFightsView();
                    }));
                  },
                  controller: _destinationController,
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Куда - Турция',
                  ),
                  style: kInputTextStyle,
                ),
              ),
              shouldOpenScreen
                  ? Container()
                  : GestureDetector(
                      //Кнопка очистки - только для второго экрана
                      onTap: () {
                        _destinationController.text = '';
                        ref.read(odProvider.notifier).setDestination('');
                      },
                      child: const Icon(
                        Icons.clear,
                        size: kIconSize,
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
