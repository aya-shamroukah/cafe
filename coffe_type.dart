// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Coffee_type extends StatelessWidget {
  final String coffee_type;
  final bool isSelect;
  final VoidCallback ontap;
   Coffee_type({
    required this.coffee_type,
    required this.isSelect,
    required this.ontap
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(left:70.0,right: 80),
        child: Text(coffee_type,
        style: TextStyle(fontSize: 18,
        fontWeight: FontWeight.bold,
        color:isSelect? Colors.orange:Colors.white54
        ),),
      ),
    );
  }
}