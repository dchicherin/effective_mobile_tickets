import 'package:flutter/material.dart';

import '../../constant_values.dart';
import '../views/ticket_view.dart';

class ShowAllButton extends StatelessWidget {
  const ShowAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const TicketView();
        }));
      },
      child: Container(
        height: 42,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kDarkBlue,
          borderRadius: BorderRadius.all(kHalfRadius),
        ),
        child: const Center(
          child: Text(
            'Посмотреть все билеты',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
