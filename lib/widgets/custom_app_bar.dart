import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: themeData().primaryColorDark,
      elevation: 0,
      title: const Row(children: [
        Expanded(child: Icon(Icons.accessibility_rounded)),
        Expanded(flex: 2, child: Text('Discover')),
      ]),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.chat_bubble_text),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.person),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56);
}