import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;

  TextFieldWidget({
    Key key,
    @required this.controller,
    @required this.label,
    @required this.icon,
  }) : super(key: key);

  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(100),
    borderSide: BorderSide(
      color: Color(0xffF2F2F2),
      width: 3
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        hintText: label,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            child: Icon(
              icon,
              color: Colors.white,
            ),
            backgroundColor: Color(0xffC5E4F8),
          ),
        ),
      ),
    );
  }
}
