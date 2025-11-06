import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.iconData});
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.01),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(iconData, size: 30)),
    );
  }
}
