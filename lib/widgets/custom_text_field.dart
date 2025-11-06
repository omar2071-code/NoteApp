import 'package:flutter/material.dart';
import 'package:note_app/widgets/constaonts_file.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Title',
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
