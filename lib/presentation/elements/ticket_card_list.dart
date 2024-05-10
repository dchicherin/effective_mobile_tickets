import 'package:effective_mobile_tickets/presentation/elements/ticket_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:badges/badges.dart' as badges;
import '../../constant_values.dart';
import '../../data/model/ticket_model.dart';
import '../../state/notifiers/ticket_notifier.dart';

class TicketCardList extends ConsumerWidget {
  const TicketCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Ticket> tickets = ref.watch(ticketProvider).tickets;
    return tickets.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : ListView.separated(
            shrinkWrap: true,
            itemCount: tickets.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  tickets[index].badge != null
                      ? const SizedBox(
                          height: kMockBarSpacing,
                        )
                      : Container(),
                  badges.Badge(
                    badgeContent: tickets[index].badge != null
                        ? Container(
                            decoration: BoxDecoration(
                                color: kDarkBlue,
                                borderRadius:
                                    BorderRadius.circular(kStandardSpacing)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kMockBarSpacing, vertical: 2),
                              child: Text(
                                tickets[index].badge!,
                                style: const TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          )
                        : null,
                    badgeStyle: const badges.BadgeStyle(
                      badgeColor: Colors.transparent,
                    ),
                    position: badges.BadgePosition.topStart(
                        start: -kLeftEqualizing, top: -kStandardSpacing),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: kDarkTableColor,
                        borderRadius: BorderRadius.all(kHalfRadius),
                      ),
                      child: TicketCard(
                        tickets: tickets,
                        index: index,
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: kStandardSpacing,
              );
            },
          );
  }
}
