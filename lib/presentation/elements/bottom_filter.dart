import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant_values.dart';

class BottomFilter extends StatelessWidget {
  const BottomFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kMockBarSize,
      child: Padding(
        padding: kStandardInsets,
        child: Container(
          decoration: BoxDecoration(
            color: kDarkBlue,
            borderRadius: BorderRadius.circular(kMockBarRadius),
          ),
          child: const Padding(
            padding: EdgeInsets.all(kMockBarSpacing),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.slider_horizontal_3,
                  size: 16,
                ),
                SizedBox(
                  width: kMockBarSpacing,
                ),
                Text(
                  'Фильтр',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.bar_chart,
                  size: 16,
                ),
                SizedBox(
                  width: kMockBarSpacing,
                ),
                Text(
                  'График цен',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
