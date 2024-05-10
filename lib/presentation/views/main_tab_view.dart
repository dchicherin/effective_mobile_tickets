import 'package:effective_mobile_tickets/presentation/views/search_start_base_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
//Основное вью для табконтроллера
    with
        SingleTickerProviderStateMixin {
  late TabController _tabController;
  String storedFromFill = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchStartView(tabController: _tabController);
  }
}
