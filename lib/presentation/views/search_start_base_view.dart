import 'package:effective_mobile_tickets/presentation/views/search_start_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant_values.dart';
import '../elements/icons_e_m_icons.dart';

class SearchStartView extends StatelessWidget {
  const SearchStartView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          //Вкладка с началом основного процесса
          const SearchStartingView(),
          //заглушки
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
          Container(color: Colors.orange),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(
          top: BorderSide(width: 1.0, color: kDarkTableColor),
        )),
        child: TabBar(
          dividerColor: Colors.transparent,
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(
                IconsEM.plane,
              ),
              text: 'Авиабилеты',
            ),
            Tab(
                icon: Icon(
                  CupertinoIcons.bed_double_fill,
                ),
                text: 'Отели'),
            Tab(
              icon: Icon(IconsEM.locationpin),
              text: "Короче",
            ),
            Tab(
              icon: Icon(IconsEM.bell),
              text: 'Подписки',
            ),
            Tab(
              icon: Icon(IconsEM.person),
              text: "Профиль",
            ),
          ],
        ),
      ),
    );
  }
}
