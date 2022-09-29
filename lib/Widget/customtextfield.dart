import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final Icon prefxicon;
  final String hint, label;
  const CustomTextField(
      {Key? key,
      required this.prefxicon,
      required this.hint,
      required this.label})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width * 0.85,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            prefixIconColor: Colors.grey,
            border: InputBorder.none,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: widget.prefxicon,
            hintText: widget.hint,
            labelText: widget.label,
          ),
        ),
      ),
    );
  }
}
