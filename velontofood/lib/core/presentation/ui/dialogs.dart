import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textless/textless.dart';
import 'package:velontofood/core/presentation/Popup_extension.dart';
import 'package:velontofood/core/presentation/ui/simple_text_list_view.dart';
class Dialogs {
  static void showListBottomSheet(
      {required BuildContext context,
      String? title,
      required List<String> items,
      String? selectedItem,
      Function(String newValue)? onSelected}) {
    SimpleTextListView(items,
            onSelected: onSelected, selectedItem: selectedItem)
        .asBottomSheet(context, title: title);
  }

  static void confirm(BuildContext context,
      {String? message,
        VoidCallback? onConfirmed,
        String confirmLabel = 'Confirm',String cancelLabel = 'Cancel'}) {
    showCupertinoDialog<void>(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: cancelLabel.btn),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  onConfirmed!();
                },
                child:
                confirmLabel.btn.color(Theme.of(context).primaryColor))
          ],
          content: Container(
            padding: const EdgeInsets.all(16),
            child: message!.s1,
          ),
        ));
  }
}
