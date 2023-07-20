import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/config/theme.dart';
import 'package:food_delivery/models/userModel.dart';

import '../widgets/choice_button.dart';

class Profile extends StatelessWidget {
  final User user;
  const Profile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/2,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Hero(
                  tag: 'user_image',
                  child: Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(user.imageUrls[0]),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 30,
                            color: Colors.red,
                            hasGradient: false,
                            icon: CupertinoIcons.clear),
                        ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 30,
                            color: Colors.white,
                            hasGradient: true,
                            icon: Icons.favorite),
                        ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 30,
                            color: Colors.black,
                            hasGradient: false,
                            icon: Icons.watch_later),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${user.name}, ${user.age}',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                Text(user.jobTitle,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 14),),
                const SizedBox(height: 15,),
                const Text('About',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                Text(user.bio,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 14),),
                const Text('Interests',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                      user.interests.map((interests) =>
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [themeData().primaryColorDark,
                              Colors.red]
                          )
                        ),
                        child: Text(interests,style:  TextStyle(color: themeData().primaryColorLight),),
                      ),
                      ).toList(),

                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
