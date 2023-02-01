import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_text_list_view.freezed.dart';

@freezed
class SimpleListViewModel with _$SimpleListViewModel {
  const factory SimpleListViewModel({
    required List<String> items,
    String? selectedItem,
    Function(String newValue)? onSelected,
  }) = _SimpleListViewModel;
}

class SimpleTextListView extends StatelessWidget {
  const SimpleTextListView(this.items,
      {Key? key, this.selectedItem, this.onSelected})
      : super(key: key);
  final List<String> items;
  final String? selectedItem;
  final Function(String newValue)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: Text(items[index]),
              onTap:
                  onSelected != null ? () => onSelected!(items[index]) : null,
              selectedColor: Theme.of(context).primaryColor,
              selected:
                  selectedItem != null ? selectedItem == items[index] : false,
            ),
        separatorBuilder: (context, index) => const Divider());
  }
}