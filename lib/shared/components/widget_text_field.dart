import 'package:flutter/material.dart';

class WidgetTextField extends StatelessWidget {
  const WidgetTextField({Key? key,
    @required this.inputType,
    this.suffexIcon,
    @required this.onSave,
    this.onChange,
    this.maxLines}) : super(key: key);
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSave;
  final ValueSetter? onChange;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChange,
      onSaved: onSave,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const  BorderSide(
            color: Color(0xFFCCCCCC),
          ),
        ),
      ),
    );
  }
}
