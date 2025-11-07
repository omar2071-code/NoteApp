import 'package:flutter/material.dart';

class EmptyBodyNotes extends StatelessWidget {
  const EmptyBodyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xffe5e5e5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Add Notes ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
