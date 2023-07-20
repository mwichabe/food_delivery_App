import 'package:flutter/material.dart';
import 'package:food_delivery/screens/onBoarding/widgets/custom_button.dart';
class Start extends StatelessWidget {
  final TabController tabController;
  const Start({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.asset('assets/couples3.jpg',
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text('WELCOME TO DATING APP!',style: TextStyle(color: Colors.white,fontSize: 14),),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('A social sharing app where you can find your potential match',style: TextStyle(color: Colors.white60,fontSize: 12,letterSpacing: 1.0),
                    textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
            CustomButton(tabController: tabController)
          ],
        )
      ),
    );
  }
}
