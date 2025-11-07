import 'package:flutter/material.dart';
import 'package:note_app/widgets/constants_file.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLine = 1,
    this.onSaved,
    this.onChanged,
  });
  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
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
      onChanged: onChanged,
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
