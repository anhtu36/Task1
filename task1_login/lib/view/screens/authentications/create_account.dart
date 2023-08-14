import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_login/component/choose_login_widget.dart';
import 'package:task1_login/component/divider.dart';
import 'package:task1_login/component/reusable_button.dart';
import 'package:task1_login/component/sign_up_button.dart';
import 'package:task1_login/view/screens/choose_login.dart';
import 'package:task1_login/view/screens/profile_screen.dart';
import 'package:task1_login/viewmodels/google_view_model.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChooseLoginMethod(),
                  )),
              child: Icon(Icons.arrow_back_rounded, color: Colors.grey[600])),
          title: const Text(
            'アカウントの作成',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            ReusableLoginButton(
              svgPicture: SvgPicture.asset('assets/images/line_logo.svg'),
              text: "LINEで登録",
              onTap: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            ReusableLoginButton(
              svgPicture: SvgPicture.asset('assets/images/yahoo_logo.svg'),
              text: "Yahoo JAPAN ID で登録",
              onTap: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            ReusableLoginButton(
                svgPicture: SvgPicture.asset('assets/images/google_logo.svg'),
                text: "Googleアカウントで登録",
                onTap: () async {
                  await GoogleViewModel().signInWithGoogle().then((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  });
                }),
            SizedBox(
              height: size.height * 0.12,
            ),
            const DividerWidget(),
            SizedBox(
              height: size.height * 0.1,
            ),
            SignUpButton(
              text: '会員登録へ進む',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
