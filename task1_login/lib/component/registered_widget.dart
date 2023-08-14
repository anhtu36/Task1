import 'package:flutter/material.dart';
import 'package:task1_login/component/sign_up_button.dart';

class RegisteredWidget extends StatelessWidget {
  const RegisteredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width * 1,
                height: size.height * 0.2,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'すでにご登録済の方はこちら',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                    SignUpButton(
                      text: 'ログイン',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            );
  }
}