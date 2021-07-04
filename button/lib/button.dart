import 'package:flutter/material.dart';

enum ButtonStyles {
  primary,
  secondary,
  tertiary,
}

class Button extends StatelessWidget {
  Button({
    @required this.labelText,
    @required this.onPressed,
    this.style = ButtonStyles.primary,
    Key key,
  }) : super(key: key);

  final String labelText;
  final Function onPressed;
  final ButtonStyles style;

  Map<ButtonStyles, Color> mapColor = {
    ButtonStyles.primary: Colors.red,
    ButtonStyles.secondary: Colors.white,
    ButtonStyles.tertiary: Colors.white,
  };

  Map<ButtonStyles, Color> textColor = {
    ButtonStyles.primary: Colors.white,
    ButtonStyles.secondary: Colors.red,
    ButtonStyles.tertiary: Colors.amber,
  };

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Text(
            labelText,
            style: TextStyle(color: textColor[style]),
          )),
      style: ElevatedButton.styleFrom(
          primary: mapColor[style],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            side: style == ButtonStyles.tertiary
                ? BorderSide(width: 2)
                : BorderSide.none,
          )),
    );
  }
}
