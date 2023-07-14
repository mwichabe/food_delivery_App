

import 'package:flutter/material.dart';

import '../config/theme.dart';

class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final IconData icon;
  final bool hasGradient;
  const ChoiceButton({Key? key,
    required this.width,
    required this.height,
    required this.size,
    required this.color,
    required this.icon,
    required this.hasGradient
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          gradient: hasGradient?
          LinearGradient(
              colors: [themeData().primaryColorDark,
                Colors.red]
          ):
          null,
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(
              color: Colors.grey.withAlpha(50),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(3, 3)
          )]
      ),
      child:  Icon(icon,color: color,size: size,),
    );
  }
}