import 'package:flutter/material.dart';

class ChipsGroup extends StatelessWidget {
  final Set<String> items;
  final Set<String>? selectedItems;
  final Function(Set<String>? selectedItems)? onToggle;

  const ChipsGroup(
      {Key? key, required this.items, this.selectedItems, this.onToggle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
          children: items
              .map((status) => Container(
                  padding: const EdgeInsets.all(2.0),
                  child: ChoiceChip(
                      label: Text(status),
                      selected: selectedItems!.contains(status),
                      onSelected: (selected) {
                        selected
                            ? selectedItems!.add(status)
                            : selectedItems!.remove(status);
                        onToggle!(selectedItems);
                      })))
              .toList()),
    );
  }
}
