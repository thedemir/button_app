import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.text,
      required this.ontap,
      required this.borderColor});
  final String text;
  final Color borderColor;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: ontap,
        child: Container(
          width: width * 0.7,
          height: height * 0.07,
          decoration: BoxDecoration(
            color: Colors.deepPurple[200],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 3),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )),
        ));
  }
}
