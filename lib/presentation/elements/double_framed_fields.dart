import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant_values.dart';
import 'icons_e_m_icons.dart';
import 'origin_destination_fields.dart';

class DoubleFramedFields extends StatelessWidget {
  const DoubleFramedFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kDarkGrey,
        borderRadius: BorderRadius.all(kStandardRadius),
      ),
      child: Padding(
        padding: kStandardInsets,
        child: Container(
          decoration: const BoxDecoration(
            color: kMidGrey,
            borderRadius: BorderRadius.all(kStandardRadius),
          ),
          child: Row(
            children: [
              const Padding(
                padding: kSearchInsets,
                child: Icon(
                  IconsEM.magnifyingglass,
                  color: kLightBlack,
                  size: 16,
                ),
              ),
              Expanded(
                child: OriginDestinationFields(
                  shouldOpenScreen: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
