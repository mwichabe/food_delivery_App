import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/blocs/swipeBloc/swipe_bloc.dart';
import 'package:food_delivery/blocs/swipeBloc/swipe_event.dart';
import 'package:food_delivery/blocs/swipeBloc/swipe_state.dart';
import 'package:food_delivery/config/theme.dart';
import 'package:food_delivery/models/userModel.dart';
import 'package:food_delivery/screens/profile.dart';

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
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context,state){
          if(state is SwipeLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          else if ( state is SwipeLoaded){
            return Column(
              children: [
                InkWell(
                  onDoubleTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(user: state.users[0])));
                  },
                  child: Draggable<User>(
                    data: state.users[0],
                    feedback: UserCard(user: state.users[0]),
                    childWhenDragging: UserCard(user: state.users[1]),
                    onDragEnd: (drag){
                      if(drag.velocity.pixelsPerSecond.dx<0){
                        context.read<SwipeBloc>().add(SwipeLeftEvent(user: state.users[0]));
                        log('Swiped left');
                      } else
                      {
                        context.read<SwipeBloc>().add(SwipeRightEvent(user: state.users[0]));
                        log('Swiped right');
                      }
                    },

                    child: UserCard(user: state.users[0]),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: ()
                          {
                            context.read<SwipeBloc>().add(SwipeLeftEvent(user: state.users[0]));
                            log('Swiped left');
                          },
                          child: const ChoiceButton(
                              width: 60,
                              height: 60,
                              size: 20,
                              color: Colors.red,
                              hasGradient: false,
                              icon: CupertinoIcons.clear),
                        ),
                        InkWell(
                          onTap: (){
                            context.read<SwipeBloc>().add(SwipeRightEvent(user: state.users[0]));
                            log('Swiped right');
                          },
                          child: const ChoiceButton(
                              width: 60,
                              height: 60,
                              size: 35,
                              hasGradient: true,
                              color: Colors.white,
                              icon: Icons.favorite),
                        ),
                        ChoiceButton(
                            width: 60,
                            height: 60,
                            size: 20,
                            hasGradient: false,
                            color: Colors.black,
                            icon: Icons.watch_later),
                      ],
                    ),
                  ),
                )
              ],
            );
          }
          else {
            return const Text('Something went wrong.');
          }
        }
        ),
      );
  }
}
