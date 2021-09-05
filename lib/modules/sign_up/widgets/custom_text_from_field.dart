import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {
  late TextEditingController controller;
  late TextInputType type;
  void Function(String)? onSubmit;
  void Function()? onTap;
  String? Function(String?)? validate;
  late String label;
  IconData? prefix;
  IconData? suffix;
  void Function()? suffixPressed;
  CustomTextView({
    required this.controller,
    required this.type,
    required this.onSubmit,
    this.onTap,
    this.validate,
    required this.label,
    this.prefix,
    this.suffix,
    this.suffixPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange[100]!,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                )
              ]),
          child: TextFormField(
            keyboardType: type,
            onChanged: (value) {},
            onTap: () {},
            validator: (value) {},
            controller: controller,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  prefix, color: Colors.red[300],
                  // color: Colors.white,
                ),
                focusColor: Colors.red[300],
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(
                    Radius.circular(90.0),
                  ),
                  borderSide: BorderSide.none,
                  //borderSide: const BorderSide(),
                ),
                hintText: label,
                hintStyle: TextStyle(color: Colors.red[200])),
          )),
    );
  }
}
