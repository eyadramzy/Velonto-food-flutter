import 'package:flutter/material.dart';

class ExtendedTextField extends StatefulWidget {
  final Function(String text)? onChange;
  final String? initText;
  final TextEditingController controller;
  final bool enabled;
  final FormFieldSetter<String>? onSaved;
  ExtendedTextField(
      {Key? key, this.onChange, this.initText, this.enabled = true, this.onSaved})
      : controller = TextEditingController(text: initText ?? ''),
        super(key: key);

  @override
  _ExtendedTextFieldState createState() => _ExtendedTextFieldState();
}

class _ExtendedTextFieldState extends State<ExtendedTextField> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(focusNode);
    return TextFormField(
      focusNode: focusNode,
      autofocus: true,
      controller: widget.controller,
      keyboardType: TextInputType.multiline,
      minLines: 2,
      maxLines: 5,
      onSaved: widget.onSaved,
      enabled: widget.enabled,
      onChanged: (value) {
        if (widget.onChange != null) {
          widget.onChange!(value);
        }
        setState(() {});
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        suffixIcon: widget.controller.text.isNotEmpty
            ? IconButton(
                onPressed: () {
                  widget.controller.clear();
                  widget.onChange!('');
                  setState(() {});
                },
                icon: Icon(
                  Icons.cancel,
                  color:
                      Theme.of(context).inputDecorationTheme.suffixStyle!.color,
                ),
              )
            : null,
        labelText: 'add message...',
        alignLabelWithHint: true,
        // hintStyle: TextStyle(color: Colors.black.withAlpha(80)),
      ),
    );
  }
}
