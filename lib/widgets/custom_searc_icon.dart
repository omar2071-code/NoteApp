import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.iconData, this.onPressed});
  final IconData iconData;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.01),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(iconData, size: 30)),
    );
  }
}
