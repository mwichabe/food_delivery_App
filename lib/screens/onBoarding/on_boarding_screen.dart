import 'package:flutter/material.dart';
import 'package:food_delivery/screens/onBoarding/email.dart';
import 'package:food_delivery/screens/onBoarding/start_screen.dart';

import '../../config/theme.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static const List<Tab> tabs = [
    Tab(text: 'Start'),
    Tab(text: 'email',)
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });
          return Scaffold(
              appBar: AppBar(
            backgroundColor: themeData().primaryColorDark,
            elevation: 0,
            title: const Row(children: [
              Expanded(child: Icon(Icons.handshake)),
              Expanded(flex: 2, child: Text('DATING APP')),
            ]),
          ),
                  body:  TabBarView(
                      children:  [
                        Start(tabController: tabController,),
                        Email(tabController: tabController)

                      ]
                  ),
          );
        }));
  }
}
