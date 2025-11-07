import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_searc_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    required this.iconData,
    this.onPressed,
  });
  final String text;
  final IconData iconData;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        Spacer(),
        CustomSearchIcon(iconData: iconData, onPressed: onPressed),
      ],
    );
  }
}
