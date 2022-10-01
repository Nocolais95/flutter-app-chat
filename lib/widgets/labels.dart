import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String question;
  final String account;

  const Labels(
      {super.key,
      required this.ruta,
      required this.question,
      required this.account});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            question,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          GestureDetector(
            child: Text(
              account,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, ruta);
            },
          )
        ],
      ),
    );
  }
}
