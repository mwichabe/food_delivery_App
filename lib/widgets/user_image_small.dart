import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserImageSmall extends StatelessWidget {

  const UserImageSmall({Key? key,required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 8,right: 8),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: CachedNetworkImageProvider(imageUrl),
            fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}