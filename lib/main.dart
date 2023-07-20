import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/blocs/swipeBloc/swipe_bloc.dart';
import 'package:food_delivery/blocs/swipeBloc/swipe_event.dart';
import 'package:food_delivery/models/userModel.dart';
import 'package:food_delivery/screens/homeScreen.dart';
import 'package:food_delivery/screens/onBoarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=>SwipeBloc()..add(LoadUserEvent(users: User.users)))
        ],
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'onBoard',
        routes: {
          'home': (context)=> const HomeScreen(),
          'onBoard': (context)=> const OnBoardingScreen(),
        },
    ),
      );
  }
}



