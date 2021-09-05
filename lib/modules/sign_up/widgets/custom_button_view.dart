import 'package:flutter/material.dart';

class CustomButtonView extends StatelessWidget {
  late String text;
  void Function()? onPreesed;
  CustomButtonView({
    required this.text,
    required this.onPreesed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 40,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.orange],
          ),
        ),
        child: MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: StadiumBorder(),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {}));
  }
}
