import 'package:button_app/constant/color_constants.dart';
import 'package:button_app/view/home_view/view/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isPressed;

  @override
  void initState() {
    isPressed = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: isPressed ? ColorConst.sunBg : ColorConst.moonBg,
        child: Column(
          children: [
            Spacer(),
            isPressed
                ? Icon(
                    Icons.sunny,
                    size: 50,
                    color: ColorConst.sunColor,
                  )
                : Icon(
                    Icons.mode_night_rounded,
                    size: 50,
                    color: ColorConst.moonColor,
                  ),
            Spacer(flex: 4),
            Button(
              text: "Zamanı Değiştir",
              ontap: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
            ),
            SizedBox(height: height * 0.1)
          ],
        ),
      ),
    );
  }
}
