import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant_values.dart';
import '../../data/model/offer_model.dart';
import 'icons_e_m_icons.dart';

class OfferCard extends StatelessWidget {
  //Карточка предложения
  const OfferCard({super.key, required this.offer});
  final Offer offer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: kOfferSize,
          width: kOfferSize,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(kStandardRadius),
            image: DecorationImage(
              fit: BoxFit.fill,
              //Картинка из предзагруженных, в соответствии с id
              image: offerImages[offer.id] ??
                  const AssetImage('assets/pics/1.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kSmallSpacerSize),
          child: Text(
            offer.title,
            style: kMidBoldText,
          ),
        ),
        Text(
          offer.town,
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            const Icon(
              IconsEM.planeflies,
              size: 12,
            ),
            Text(
              ' от ${offer.price.value.toString()} ₽',
            ),
          ],
        ),
      ],
    );
  }
}
