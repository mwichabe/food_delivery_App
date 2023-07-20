import 'package:flutter/material.dart';
import 'package:food_delivery/screens/onBoarding/widgets/custom_button.dart';
import 'package:food_delivery/screens/onBoarding/widgets/custom_text_field.dart';
import 'package:food_delivery/screens/onBoarding/widgets/custome_text_header.dart';
class Email extends StatelessWidget {
  final TabController tabController;
  const Email({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomTextHeader(tabController:tabController,text: 'What\' Your Email Address?'),
                  CustomTextField(tabController: tabController, text: 'ENTER YOUR EMAIL .')

                ],
              ),
              CustomButton(tabController: tabController,text:'NEXT STEP')
            ],
          )
      ),
    );
  }
}
