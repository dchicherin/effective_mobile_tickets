import 'package:flutter/material.dart';
import '../../constant_values.dart';

class ActionCard extends StatelessWidget {
  //Карточка действия
  const ActionCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kLighterTableColor,
        borderRadius: BorderRadius.all(kStandardRadius),
      ),
      child: Padding(
        padding: kHalfInsets,
        child: child,
      ),
    );
  }
}
