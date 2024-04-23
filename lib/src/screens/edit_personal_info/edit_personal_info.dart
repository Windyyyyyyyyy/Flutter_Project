import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_place/src/config/color_constants.dart';

class EditPersonalInfo extends StatefulWidget {
  const EditPersonalInfo({super.key});

  @override
  State<EditPersonalInfo> createState() => _EditPersonalInfoState();
}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorConstants.green_600,
        ),
        title: const Text(
          "Chỉnh sửa trang cá nhân",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        foregroundColor: ColorConstants.white,
        backgroundColor: ColorConstants.green_500,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Thông tin cá nhân",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),

              //Last Name
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Họ',
                    contentPadding: const EdgeInsets.all(15),
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstants.green_800,
                        width: 2,
                      ),
                    ),
                    floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.focused)
                                ? ColorConstants.green_800
                                : Colors.grey;
                        return TextStyle(color: color);
                      },
                    ),
                  ),
                  cursorColor: ColorConstants.green_800,
                ),
              ),

              //First Name
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Tên',
                    contentPadding: const EdgeInsets.all(15),
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstants.green_800,
                        width: 2,
                      ),
                    ),
                    floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.focused)
                                ? ColorConstants.green_800
                                : Colors.grey;
                        return TextStyle(color: color);
                      },
                    ),
                  ),
                  cursorColor: ColorConstants.green_800,
                ),
              ),

              //Phone Number
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  controller: TextEditingController(text: "0379498787"),
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Số điện thoại',
                    contentPadding: const EdgeInsets.all(15),
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstants.green_800,
                        width: 2,
                      ),
                    ),
                    floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.focused)
                                ? ColorConstants.green_800
                                : Colors.grey;
                        return TextStyle(color: color);
                      },
                    ),
                  ),
                  cursorColor: ColorConstants.green_800,
                  enabled: false,
                ),
              ),

              //Address
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Địa chỉ của bạn',
                    contentPadding: const EdgeInsets.all(15),
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstants.green_800,
                        width: 2,
                      ),
                    ),
                    floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.focused)
                                ? ColorConstants.green_800
                                : Colors.grey;
                        return TextStyle(color: color);
                      },
                    ),
                  ),
                  cursorColor: ColorConstants.green_800,
                ),
              ),

              //Email
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  // controller: TextEditingController(text: "0379498787"),
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Email',
                    contentPadding: const EdgeInsets.all(15),
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstants.green_800,
                        width: 2,
                      ),
                    ),
                    floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.focused)
                                ? ColorConstants.green_800
                                : Colors.grey;
                        return TextStyle(color: color);
                      },
                    ),
                  ),
                  cursorColor: ColorConstants.green_800,
                ),
              ),

              //Introduction
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: const OutlineInputBorder(),
                    labelText: 'Giới thiệu',
                    contentPadding: const EdgeInsets.all(15),
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstants.green_800,
                        width: 2,
                      ),
                    ),
                    floatingLabelStyle: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                        final Color color =
                            states.contains(MaterialState.focused)
                                ? ColorConstants.green_800
                                : Colors.grey;
                        return TextStyle(color: color);
                      },
                    ),
                  ),
                  cursorColor: ColorConstants.green_800,
                  maxLength: 60,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1.0, 0.0), //(x,y)
              blurRadius: 1.0,
            ),
          ],
          color: ColorConstants.grey,
        ),
        width: (MediaQuery.of(context).size.width),
        padding: const EdgeInsets.all(15),
        height: 75,
        child: FilledButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(ColorConstants.green_600),
          ),
          onPressed: () {},
          child: const Text(
            "LƯU",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
