import 'package:flutter/material.dart';
import 'package:food_delivery/config/theme.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomButton({Key? key, required this.tabController, this.text='START'
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(colors: [
              themeData().primaryColorDark,
              themeData().primaryColorLight
            ])),
        child: ElevatedButton(
          onPressed: () {
            tabController.animateTo(tabController.index + 1);
          },
          style: ElevatedButton.styleFrom(
              elevation: 0, backgroundColor: Colors.transparent),
          child: SizedBox(width: double.infinity, child: Text(text)),
        ));
  }
}
