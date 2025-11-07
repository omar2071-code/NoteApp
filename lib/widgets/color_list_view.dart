import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/Add%20Note%20Cubit/add_note_cubit.dart';

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
  List<Color> colors = [
    Color(0xffb31111),
    Color(0xfffe5d26),
    Color(0xfff2c078),
    Color(0xffde9151),
    Color(0xffe5e5e5),
    Color(0xfffca311),
    Color(0xfffb6f92),
    Color(0xff006d77),
    Color(0xfffdffb6),
    Color(0xffc1dbb3),
    Color(0xff7ebc89),
    Color(0xffbd9b7e),
    Color(0xffde9151),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        padding: EdgeInsets.symmetric(vertical: 3),
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isColorActive: currentIndex == index,
              ),
            ),
      ),
    );
  }
}
