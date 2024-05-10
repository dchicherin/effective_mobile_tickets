import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constant_values.dart';
import '../../mock_data.dart';
import '../../state/notifiers/origin_destination_notifier.dart';

class IconList extends ConsumerWidget {
  const IconList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: kRecCardHeight,
      child: ListView.separated(
        itemCount: mockButtons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //Только одна из кнопок работает, хардкод
              if (index == 1) {
                ref.read(odProvider.notifier).setDestination('Куда угодно');
              } else {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Функция в разработке'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            },
            child: Column(
              children: [
                Padding(
                  padding: kHalfInsets,
                  child: SizedBox(
                    width: kRecPicSize,
                    height: kRecPicSize,
                    child: mockButtons[index]!.pic,
                  ),
                ),
                SizedBox(
                  width: kRecTextWidth,
                  child: Text(
                    mockButtons[index]!.name,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: kStandardSpacing,
          );
        },
      ),
    );
  }
}
