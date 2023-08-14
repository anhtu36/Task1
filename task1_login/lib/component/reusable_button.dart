import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1_login/view/screens/profile_screen.dart';
import 'package:task1_login/viewmodels/google_view_model.dart';

class ReusableLoginButton extends StatelessWidget {
  final String text;
  final SvgPicture svgPicture;
  final void Function() onTap;

  const ReusableLoginButton(
      {super.key,
      required this.svgPicture,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: size.height / 14,
          width: size.width / 1.1,
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(35)),
          child:
              // Padding(
              //   padding:  EdgeInsets.only(left: size.width * 0.12),
              //   child:
              Row(
            children: [
              SizedBox(width: size.width * 0.1),
              SizedBox(
                  height: size.height / 10,
                  width: size.width / 10,
                  child: svgPicture),
              SizedBox(width: size.width * 0.1),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
