import 'package:flutter/material.dart';

typedef StringFun = void Function(String);

class TextInput extends StatelessWidget {
  const TextInput({
    @required this.labelText,
    @required this.onChanged,
    Key key,
  }) : super(key: key);
  final String labelText;
  final StringFun onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.red,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          )),
      onChanged: onChanged,
    );
  }
}
