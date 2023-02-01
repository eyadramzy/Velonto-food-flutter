import 'dart:ui';

import 'package:flutter/material.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
              color: Theme.of(context).bottomSheetTheme.backgroundColor?.withAlpha(20),
              padding:
              const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.all(Radius.circular(10.0))),
                    height: 6,
                    width: 60,
                  ),
                  if (title != null)
                    ...[const SizedBox(height: 8,),Center(
                      child: Text(
                        title!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo',
                            fontSize: 18),
                      ),
                    ),]
                ],
              )
          )),
    );
  }
}