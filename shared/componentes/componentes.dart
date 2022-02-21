import 'package:flutter/material.dart';

// Reusable componentes

Widget deafultButton({
  required double width,
  required Color background,
  required String text,
  required Function function,
}) =>
    Container(
  width: width,
  color: background,
  height: 50,
  child: MaterialButton(
    onPressed: function(),
    child:Text(
      text.toUpperCase(),
      style:  const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  ),
);
