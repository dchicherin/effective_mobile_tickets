import 'package:effective_mobile_tickets/constant_values.dart';
import 'package:flutter/material.dart';

import '../elements/bottom_filter.dart';
import '../elements/fligth_info_bar.dart';
import '../elements/ticket_card_list.dart';

class TicketView extends StatelessWidget {
  const TicketView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: kStandardInsets,
        child: SafeArea(
          child: Column(
            children: [
              FlightInfoBar(),
              SizedBox(
                height: kLargeSpacer,
              ),
              Expanded(
                child: Stack(
                  children: [
                    TicketCardList(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: BottomFilter(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
