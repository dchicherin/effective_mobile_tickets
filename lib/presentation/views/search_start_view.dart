import 'package:flutter/cupertino.dart';
import '../../constant_values.dart';
import '../elements/double_framed_fields.dart';
import '../elements/offers_table.dart';
import '../elements/origin_destination_fields.dart';

class SearchStartingView extends StatelessWidget {
  const SearchStartingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Название в центре
            Padding(
              padding: kHeaderInsets,
              child: Center(
                child: Text(
                  'Поиск дешевых\nавиабилетов',
                  style: kLargeBoldText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //Поля и оформление вокруг них
            Padding(
              padding: kStandardInsets,
              child: DoubleFramedFields(),
            ),
            //Секция с предложениями
            Padding(
              padding: kStandardInsets,
              child: Text(
                'Музыкально отлететь',
                style: kLargeBoldText,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 235,
              child: OffersTable(),
            ),
          ],
        ),
      ),
    );
  }
}
