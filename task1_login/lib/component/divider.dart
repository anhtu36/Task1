import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.3,
            height: 2,
            color: Colors.grey[200],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'または',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 17,
              ),
            ),
          ),
          Container(
            width: size.width * 0.3,
            height: 2,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}
