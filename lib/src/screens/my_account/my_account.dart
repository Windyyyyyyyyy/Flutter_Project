import 'package:flutter/material.dart';
import 'package:market_place/src/config/color_constants.dart';
import 'package:market_place/src/screens/edit_personal_info/edit_personal_info.dart';
import 'package:market_place/src/screens/personal_info/personal_info.dart';
import 'package:market_place/src/screens/register/register.dart';

class MyAccountWidget extends StatefulWidget {
  const MyAccountWidget({super.key});

  @override
  State<MyAccountWidget> createState() => _MyAccountWidgetState();
}

class _MyAccountWidgetState extends State<MyAccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tài khoản",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        backgroundColor: ColorConstants.green_500,
        foregroundColor: ColorConstants.white,
        // toolbarHeight: 70.0,
        centerTitle: true,
      ),
      body: Container(
        color: ColorConstants.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: ColorConstants.white,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: ColorConstants.green_500,
                  child: Text(
                    "P",
                    style: TextStyle(color: ColorConstants.white),
                  ),
                ),
                title: const Text("Nguyen Van Phong"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalInfo()));
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Quản lý đơn hàng",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              color: ColorConstants.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/my_account/sold_order.png",
                  height: 24,
                  width: 24,
                ),
                title: const Text("Đơn bán"),
                tileColor: ColorConstants.white,
              ),
            ),
            const Divider(height: 0),
            Container(
              color: ColorConstants.white,
              child: ListTile(
                leading: Image.asset(
                  "assets/images/my_account/bought_order.png",
                  // fit: BoxFit.contain,
                  height: 24,
                  width: 24,
                ),
                title: const Text("Đơn mua"),
                tileColor: ColorConstants.white,
              ),
            ),
            const Divider(height: 0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Khác",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              color: ColorConstants.white,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Cài đặt chung"),
                tileColor: ColorConstants.white,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditPersonalInfo()));
                },
              ),
            ),
            const Divider(height: 0),
            Container(
              color: ColorConstants.white,
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Đăng xuất"),
                tileColor: ColorConstants.white,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
