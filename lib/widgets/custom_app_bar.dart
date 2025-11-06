import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_searc_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.iconData});
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        Spacer(),
        CustomSearchIcon(iconData: iconData),
      ],
    );
  }
}
