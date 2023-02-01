import 'package:flutter/material.dart';

extension PopupExtention on Widget {
  void asBottomSheet(
    BuildContext context, {
    String? title,
    bool isDismissible = true,
    bool enableDrag = true,
    Widget? action,
    bool isScrollControlled = true,
  }) {
    showModalBottomSheet(
        isDismissible: isDismissible,
        context: context,
        enableDrag: enableDrag,
        isScrollControlled: isScrollControlled,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        useRootNavigator: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.90),
        builder: (c) => SafeArea(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0))),
                  height: 6,
                  width: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 16),
                  child: Column(
                    children: [
                      if (title != null || action != null)
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            if (title != null)
                              Center(
                                child: Text(
                                  title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo',
                                      fontSize: 18),
                                ),
                              ),
                            if (action != null)
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: action),
                          ],
                        ),
                      this,
                    ],
                  ),
                ),
              ]),
            ));
  }

  void asDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: this));
  }
}
