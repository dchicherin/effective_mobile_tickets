import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constant_values.dart';

class DateText extends StatelessWidget {
  //Элемент, который делает из даты форматированный текст
  const DateText({
    super.key,
    required this.returnDate,
  });

  final DateTime? returnDate;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(fontStyle: FontStyle.italic),
        children: [
          TextSpan(
            text: DateFormat('dd MMM', 'ru').format(returnDate!),
          ),
          TextSpan(
            text: ", ${DateFormat('EE', 'ru').format(returnDate!)}",
            style: const TextStyle(color: kLightTextColor),
          ),
        ],
      ),
    );
  }
}
