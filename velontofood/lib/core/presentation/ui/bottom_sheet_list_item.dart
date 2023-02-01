import 'package:flutter/material.dart';

class BottomSheetListItem extends StatelessWidget {
  const BottomSheetListItem({Key? key, this.title, this.icon, this.onTap})
      : super(key: key);
  final GestureTapCallback? onTap;
  final String? title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: icon != null ? Icon(icon!) : null,
      title: title != null ? Text(title!) : null,
      onTap: onTap,
    );
  }
}
