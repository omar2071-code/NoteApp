import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constants_file.dart';

import 'color_list_view.dart';

class EditNotesColors extends StatefulWidget {
  const EditNotesColors({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColors> createState() => _EditNotesColorsState();
}

class _EditNotesColorsState extends State<EditNotesColors> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        padding: EdgeInsets.symmetric(vertical: 3),
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isColorActive: currentIndex == index,
              ),
            ),
      ),
    );
  }
}
