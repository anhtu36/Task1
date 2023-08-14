import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const SignUpButton({super.key, required this.text, required this.onTap});

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
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                color:const Color.fromRGBO(14, 170, 146, 4),
                width: 1.7,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  text,
                  style: const TextStyle(
                      color: Color.fromRGBO(14, 170, 146, 4),
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
