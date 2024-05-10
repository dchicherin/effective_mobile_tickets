
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class FastButtonMock {
  String name;
  int id;
  SvgPicture pic;
  FastButtonMock({
    required this.name,
    required this.id,
    required this.pic,
  });
}

Map<int, FastButtonMock> mockButtons = {
  0: FastButtonMock(
      name: "Сложный маршрут",
      id: 0,
      pic: SvgPicture.asset("assets/pics/complex.svg")),
  1: FastButtonMock(
      name: "Куда угодно",
      id: 1,
      pic: SvgPicture.asset("assets/pics/Anywhere.svg")),
  2: FastButtonMock(
      name: "Выходные",
      id: 2,
      pic: SvgPicture.asset("assets/pics/Holidays.svg")),
  3: FastButtonMock(
      name: "Горячие билеты",
      id: 3,
      pic: SvgPicture.asset("assets/pics/Hot.svg")),
};
List<Color> flightColors = [
  const Color(0xFFFF5E5E),
  const Color(0xFF2261BC),
  Colors.white,
];
