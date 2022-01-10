import 'package:flutter/material.dart';
import 'components.dart';

class CircleNewButton extends StatelessWidget {
  VoidCallback? ontap;

  CircleNewButton({VoidCallback? ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CircleAvatar(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        backgroundColor: kActiveCardColour,
        radius: 40,
      ),
    );
  }
}
