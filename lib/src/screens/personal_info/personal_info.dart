import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_place/src/config/color_constants.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorConstants.green_600,
          // statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: ColorConstants.green_500,
        // toolbarHeight: 70.0,
        title: const Text(
          "Nguyen Van Phong",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        foregroundColor: ColorConstants.white,
      ),
    );
  }
}
