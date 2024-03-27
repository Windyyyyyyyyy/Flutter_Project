import 'package:flutter/material.dart';
import 'package:template_register/main.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/9382/9382189.png",
                height: 90,
                width: 90,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              alignment: Alignment.center,
              child: const Text(
                'REGISTER',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const TextField(
              style: TextStyle(fontSize: 13),
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              style: TextStyle(fontSize: 13),
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              style: TextStyle(fontSize: 13),
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              style: TextStyle(fontSize: 13),
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              style: TextStyle(fontSize: 13),
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, loginRoute);
              }, // Hàm xử lý khi click vào "Login"
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: 'You have a account, '),
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Màu cho "Login"
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: const Text(
                          "Register",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
