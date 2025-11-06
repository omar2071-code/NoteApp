import 'package:flutter/material.dart';
import 'package:note_app/widgets/constaonts_file.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine = 1});
  final String hint;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: OutLineInputBorder(),
        focusedBorder: OutLineInputBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder OutLineInputBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
