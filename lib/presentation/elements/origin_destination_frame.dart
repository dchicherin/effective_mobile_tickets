import 'package:flutter/material.dart';

import '../../constant_values.dart';
import 'origin_destination_flight.dart';

class OriginDestinationFrame extends StatelessWidget {
  const OriginDestinationFrame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kLighterTableColor,
        borderRadius: BorderRadius.all(kStandardRadius),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: kSmallSpacerSize,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: kStandardSpacing,
                ),
                OriginDestinationFlightFields(),
                const SizedBox(
                  height: kStandardSpacing,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
