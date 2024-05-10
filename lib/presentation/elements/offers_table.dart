import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../constant_values.dart';
import '../../state/notifiers/search_screen_notifier.dart';
import 'offer_card.dart';

class OffersTable extends ConsumerWidget {
  //Лист предложений с горизонтальным скроллом
  const OffersTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(startSearchProvider).offers.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : ListView.separated(
            shrinkWrap: true,
            itemCount: ref.watch(startSearchProvider).offers.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: kHalfInsets,
                child: OfferCard(
                    offer: ref.watch(startSearchProvider).offers[index]),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: kCardSpacing);
            },
          );
  }
}
