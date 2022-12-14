import 'package:flutter/material.dart';

class Blue_Button extends StatelessWidget {
  final Function() onPressed;
  final String textButton;

  const Blue_Button(
      {super.key, required this.onPressed, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(5.0),
        shape: MaterialStateProperty.all(const StadiumBorder()),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            textButton,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
