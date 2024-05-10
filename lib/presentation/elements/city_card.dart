import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constant_values.dart';
import '../../state/notifiers/origin_destination_notifier.dart';

class CityCard extends ConsumerWidget {
  //Карточка с преложениями по городу
  const CityCard({
    super.key,
    required this.name,
    required this.assetName,
  });
  final String name;
  final String assetName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //При нажатии подставляет в город в качестве пункта назаначения
    return GestureDetector(
      onTap: () {
        ref.read(odProvider.notifier).setDestination(name);
      },
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: kIconButtonSize,
                width: kIconButtonSize,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(kHalfRadius),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(assetName),
                    )),
              ),
              const SizedBox(
                width: kSmallSpacerSize,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: kMidBoldText,
                  ),
                  const Text(
                    'Популярное направление',
                    style: TextStyle(color: kDividerColor),
                  ),
                ],
              )),
            ],
          ),
          const Divider(
            color: kDividerColor,
          ),
        ],
      ),
    );
  }
}
