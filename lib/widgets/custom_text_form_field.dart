import 'package:flutter/material.dart';
import 'package:note_app/widgets/constaonts_file.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLine = 1,
    this.onSaved,
  });
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'the field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
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
