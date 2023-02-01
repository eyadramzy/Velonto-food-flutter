import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text, MessageType type) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      text,
      style: TextStyle(color: type.textColor),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
    behavior: SnackBarBehavior.floating,
    backgroundColor: type.backgroundColor,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  ));
}

enum MessageType {
  info(Color(0xFFB517FF), Color(0xFFF9EBFF)),
  success(Color(0xFF219653), Color(0xFFECFAF2)),
  error(Color(0xFFD02737), Color(0xFFFAE9EB));

  final Color textColor;
  final Color backgroundColor;

  const MessageType(this.textColor, this.backgroundColor);
}
