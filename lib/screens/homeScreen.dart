import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/config/theme.dart';
import 'package:food_delivery/models/userModel.dart';


import '../widgets/choice_button.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/user_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeData().scaffoldBackgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserCard(user: User.users[0]),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 20,
                      color: Colors.red,
                      hasGradient: false,
                      icon: CupertinoIcons.clear
                  ),
                  ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 35,
                      hasGradient: true,
                      color: Colors.white,
                      icon: Icons.favorite
                  ),
                  ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 20,
                      hasGradient: false,
                      color: Colors.black,
                      icon: Icons.watch_later
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}








