import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginMethod extends StatelessWidget {
  final String text;
  final SvgPicture svgPicture;
  final void Function() onTap;

  const LoginMethod(
      {super.key,
      required this.text,
      required this.svgPicture,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Center(
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.3,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: const TextStyle(
                  color: Color.fromRGBO(14, 170, 146, 4),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: size.height * 0.1, child: svgPicture),
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: size.height / 15,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(14, 170, 146, 4),
                    borderRadius: BorderRadius.circular(35)),
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
