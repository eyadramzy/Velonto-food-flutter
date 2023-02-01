import 'package:flutter/material.dart';
import 'package:textless/textless.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator(
      {Key? key,
      required this.message, this.onPressed,
      this.buttonText})
      : super(key: key);
  final String message;
  final VoidCallback? onPressed;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          message.toString().s1,
          const SizedBox(height: 8),
          if (onPressed != null)
            TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16)),
              child: Text(buttonText ?? 'Try again'),
            )
        ],
      ),
    );
  }
}
