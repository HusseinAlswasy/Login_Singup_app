import 'package:flutter/material.dart';

// Reusable componentes

Widget deafultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  required String text,
  required Function function,
}) =>
    Container(
      color: background,
      width: width,
      height: 50,
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
