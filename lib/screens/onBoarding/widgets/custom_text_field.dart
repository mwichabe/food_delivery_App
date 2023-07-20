import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomTextField({Key? key, required this.tabController, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[600],
        hintText: text,
        contentPadding: const EdgeInsets.only(bottom: 5.0,top: 12.5)
      ),
    );
  }
}
