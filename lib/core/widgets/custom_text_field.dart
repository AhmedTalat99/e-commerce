import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    @required this.inputType,
    this.suffexIcon,
    @required this.onSaved,
    this.onChanged,
    this.maxLines,
  });
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final  void Function(String? value)? onSaved;
  final  void Function(String value)? onChanged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        keyboardType: inputType   ,
        onChanged: onChanged,
        onSaved: onSaved,
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:const BorderSide(color:  Color(0xFFCCCCCC),
            ),
          ),
        ),
    );
  }
}
