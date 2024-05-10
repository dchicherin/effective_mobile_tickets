import 'package:effective_mobile_tickets/constant_values.dart';
import 'package:effective_mobile_tickets/state/notifiers/origin_destination_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icons_e_m_icons.dart';

class OriginDestinationFlightFields extends ConsumerWidget {
  //Альтернативная версия полей с отбытием и назначением
  OriginDestinationFlightFields({
    super.key,
  });
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
              GestureDetector(
                onTap: () {
                  String destinationOld = _destinationController.text;
                  String originOld = _originController.text;
                  ref.read(odProvider.notifier).setDestination(originOld);
                  ref.read(odProvider.notifier).setOrigin(destinationOld);
                },
                child: const Icon(
                  IconsEM.upanddown,
                  size: kIconSize,
                ),
              ),
            ],
          ),
          const Divider(
            color: kDividerColor,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp("[а-яА-Я\\s]"))
                  ],
                  textCapitalization: TextCapitalization.words,
                  onChanged: (text) {
                    ref.read(odProvider.notifier).setDestination(text);
                  },
                  controller: _destinationController,
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Куда - Турция',
                  ),
                  style: kInputTextStyle,
                ),
              ),
              GestureDetector(
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
