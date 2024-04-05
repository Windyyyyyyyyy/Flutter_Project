import 'package:flutter/material.dart';

class MyChooseCategory extends StatefulWidget {
  const MyChooseCategory({super.key});

  @override
  State<MyChooseCategory> createState() => _MyChooseCategoryState();
}

class _MyChooseCategoryState extends State<MyChooseCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        width: 412,
                        height: 700,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE7E7E7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 65,
                              decoration:
                                  BoxDecoration(color: Color(0xFF40916C)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Danh mục',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 412,
                              height: 56,
                              //padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading:
                                        Image.asset('assets/images/car.png'),
                                    title: Text(
                                      "Xe cộ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 412,
                              height: 56,
                              //padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/images/thoitrang.png'),
                                    title: Text(
                                      "Quần áo",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 412,
                              height: 56,
                              //padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/images/dodientu.png'),
                                    title: Text(
                                      "Phụ kiện",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 412,
                              height: 56,
                              //padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/images/noithat.png'),
                                    title: Text(
                                      "Nội thất",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 412,
                              height: 56,
                              //padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/images/dodientu.png'),
                                    title: Text(
                                      "Thức ăn",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 412,
                              height: 56,
                              //padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/images/vanphong.png'),
                                    title: Text(
                                      "Văn phòng phẩm",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 412,
                              height: 56,
                              //padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/images/pet.png'),
                                    title: Text(
                                      "Thú cưng",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 412,
                              height: 56,
                              //padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/images/sports.png'),
                                    title: Text(
                                      "Thể thao",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text('Choose'),
            )
          ],
        ),
      ),
    );
  }
}
