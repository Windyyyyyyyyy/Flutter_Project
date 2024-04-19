import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_place/src/config/color_constants.dart';
import 'package:market_place/src/screens/home/home.dart';
import 'package:market_place/src/screens/management/management.dart';
import 'package:market_place/src/screens/my_account/my_account.dart';
import 'package:market_place/src/screens/notifications/notifications_widget.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    ManagementWidget(),
    NotificationsWidget(),
    MyAccountWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: ColorConstants.green_600,
            statusBarIconBrightness: Brightness.light),
        toolbarHeight: 0,
        // elevation: 0,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: ColorConstants.green_600,
        foregroundColor: Colors.white,
        onPressed: () {
          // Your FloatingActionButton actions
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index % _widgetOptions.length;
            });
          },
          indicatorColor: ColorConstants.green_100,
          backgroundColor: ColorConstants.green_100.withOpacity(0.4),
          selectedIndex: _selectedIndex,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Trang chủ',
            ),
            NavigationDestination(
              icon: Icon(Icons.list_alt),
              label: 'Quản lý tin',
            ),
            // CustomNavigationDestination(),
            NavigationDestination(
              icon: Icon(Icons.notifications_none),
              label: 'Thông báo',
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle),
              label: 'Tôi',
            ),
          ],
        ),
      ),
    );
  }
}
