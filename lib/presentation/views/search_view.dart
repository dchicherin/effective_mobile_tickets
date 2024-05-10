import 'package:effective_mobile_tickets/presentation/elements/origin_destination_fields.dart';
import 'package:flutter/material.dart';
import '../../constant_values.dart';
import '../elements/city_card.dart';
import '../elements/icon_list.dart';

class SearchView extends StatelessWidget {
  //Экран подробного выбора полей куда и откуда
  const SearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kLighterBGColor,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: kStandardInsets,
            child: Column(
              children: [
                Container(
                  width: kIOSPimpleWidth,
                  height: kIOSPimpleHeight,
                  decoration: const BoxDecoration(
                    color: kDividerColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const SizedBox(
                  height: kIOSPimpleSpacer,
                ),
                //Поля с назаначением и отбытием
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kDarkGrey,
                    borderRadius: BorderRadius.all(kStandardRadius),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: kHalfInsets,
                        child: OriginDestinationFields(shouldOpenScreen: false),
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: kStandardSpacing,
                ),
                //Иконки с действиями
                const IconList(),
                const SizedBox(
                  height: kIconListSpacer,
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kLighterTableColor,
                    borderRadius: BorderRadius.all(kStandardRadius),
                  ),
                  //Карточки городов, хардкод
                  child: const Padding(
                    padding: kStandardInsets,
                    child: Column(
                      children: [
                        CityCard(
                          name: 'Стамбул',
                          assetName: kStambulPic,
                        ),
                        CityCard(
                          name: 'Сочи',
                          assetName: kSochiPic,
                        ),
                        CityCard(
                          name: 'Пхукет',
                          assetName: kPhuketPic,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
