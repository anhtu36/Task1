import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_login/component/choose_login_widget.dart';
import 'package:task1_login/component/registered_widget.dart';
import 'package:task1_login/component/sign_up_button.dart';
import 'package:task1_login/view/screens/authentications/create_account.dart';

class ChooseLoginMethod extends StatefulWidget {
  const ChooseLoginMethod({super.key});

  @override
  State<ChooseLoginMethod> createState() => _ChooseLoginMethodState();
}

class _ChooseLoginMethodState extends State<ChooseLoginMethod> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(229, 248, 242, 2),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            LoginMethod(
              text: "はじめてご利用の方は",
              svgPicture: SvgPicture.asset('assets/images/shield_logo.svg'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateAccountScreen(),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            LoginMethod(
                text: "親や家族から招待を受けた方は",
                svgPicture:
                    SvgPicture.asset('assets/images/hand_phone_logo.svg'),
                onTap: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
           const RegisteredWidget()
          ]),
        ),
      ),
    );
  }
}
