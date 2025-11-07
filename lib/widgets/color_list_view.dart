import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/Add%20Note%20Cubit/add_note_cubit.dart';
import 'package:note_app/widgets/constants_file.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isColorActive,
    required this.color,
  });
  final bool isColorActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isColorActive
        ? CircleAvatar(
          backgroundColor: Colors.white,
          radius: 28,
          child: CircleAvatar(radius: 22, backgroundColor: color),
        )
        : CircleAvatar(radius: 28, backgroundColor: color);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

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
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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
