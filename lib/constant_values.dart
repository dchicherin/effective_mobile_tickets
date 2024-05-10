import 'package:flutter/material.dart';

//Предложения - хардкод картинок
Map<int, AssetImage> offerImages = {
  1: const AssetImage('assets/pics/1.png'),
  2: const AssetImage('assets/pics/2.png'),
  3: const AssetImage('assets/pics/3.png'),
};

//Общие отступы
const EdgeInsets kHeaderInsets = EdgeInsets.all(28.0);
const EdgeInsets kStandardInsets = EdgeInsets.all(16.0);
const EdgeInsets kHalfInsets = EdgeInsets.all(8.0);
const EdgeInsets kSearchInsets = EdgeInsets.fromLTRB(12, 12, 0, 12);

//Размеры для шрифтов/отступов и тд
const double kCardSpacing = 67.0;
const double kIconButtonSize = 40.0;
const double kSmallSpacerSize = 8;
const double kIOSPimpleWidth = 38;
const double kIOSPimpleHeight = 5;
const double kIOSPimpleSpacer = 24;
const double kStandardSpacing = 16;
const double kIconListSpacer = 30;
const double kIconSize = 20;
const double kOfferSize = 132;
const double kRecPicSize = 48;
const double kRecTextWidth = 81;
const double kRecCardHeight = 104;
const double kRoundSize = 24;
const double kLargeSpacer = 26;
const double kMockBarSize = 260;
const double kMockBarRadius = 50;
const double kMockBarSpacing = 10;
const double kLeftEqualizing = 4;
const double kUJSpacing = 13;

//Хардкод картинок
const String kStambulPic = 'assets/pics/stambul.png';
const String kSochiPic = 'assets/pics/sochi.png';
const String kPhuketPic = 'assets/pics/phuket.png';

//Цвета
const Color kMidGrey = Color(0xFF3E3F43);
const Color kDarkGrey = Color(0xFF2F3035);
const Color kLightBlack = Color(0xFF0C0C0C);
const Color kDividerColor = Color(0xFF5E5F61);
const Color kLighterBGColor = Color(0xFF242529);
const Color kLighterTableColor = Color(0xFF2F3035);
const Color kLightTextColor = Color(0xFF9F9F9F);
const Color kDarkTableColor = Color(0xFF1D1E20);
const Color kDarkBlue = Color(0xFF2261BC);
const Color kLightRed = Color(0xFFFF5E5E);

//Адреса сервисов
const String kApiAddress = 'https://run.mocky.io/';
const String kOffersService = 'v3/da7b7d22-248b-4815-8ceb-a945121da364';
const String kTicketOffersService = 'v3/21204e59-0202-4fbb-aa02-19d3bb4ccd9c';
const String kTicketService = 'v3/1e0eeca5-133f-45c9-bd00-26ac63b19b50';

//Радиусы для границ
const Radius kStandardRadius = Radius.circular(16);
const Radius kHalfRadius = Radius.circular(8);

//Основные стили текста
const TextStyle kLargeBoldText = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);
const TextStyle kInputTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'SF Pro Display',
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
const TextStyle kGreySmallText = TextStyle(
  color: kLightTextColor,
  fontStyle: FontStyle.italic,
);
const TextStyle kMidBoldText =
    TextStyle(fontWeight: FontWeight.w600, fontSize: 16);

//Общая тема
ThemeData kDefaultTheme = ThemeData.dark().copyWith(
  textTheme: const TextTheme().copyWith(
    bodySmall: const TextStyle(fontFamily: 'SF Pro Display'),
    bodyMedium: const TextStyle(fontFamily: 'SF Pro Display'),
    bodyLarge: const TextStyle(fontFamily: 'SF Pro Display'),
    labelSmall: const TextStyle(fontFamily: 'SF Pro Display'),
    labelMedium: const TextStyle(fontFamily: 'SF Pro Display'),
    labelLarge: const TextStyle(fontFamily: 'SF Pro Display'),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorColor: Colors.transparent,
    unselectedLabelColor: Color(0xFF9F9F9F),
    labelColor: Color(0xFF2261BC),
    labelStyle: TextStyle(
      fontFamily: 'SF Pro Display',
      fontSize: 10,
      overflow: TextOverflow.clip,
    ),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'SF Pro Display',
      fontSize: 10,
      overflow: TextOverflow.clip,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme().copyWith(
    border: InputBorder.none,
    contentPadding: EdgeInsets.zero,
    hintStyle: const TextStyle(
      fontSize: 16,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w600,
      color: Color(0xFF9F9F9F),
    ),
    isDense: true,
  ),
  scaffoldBackgroundColor: const Color(0xFF0C0C0C),
);
