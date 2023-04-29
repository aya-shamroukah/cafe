// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health/coffe/fav.dart';
import 'package:health/coffe/page1.dart';
import 'package:health/coffe/setting.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
class Hidden extends StatefulWidget {
  const Hidden({super.key});

  @override
  State<Hidden> createState() => _HiddenState();
}

class _HiddenState extends State<Hidden> {
  List<ScreenHiddenDrawer> pages=[];
  @override
  void initState() {
    super.initState();
    pages=[
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'coffe for you',
        baseStyle: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600
        ),
        selectedStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),
        colorLineSelected: Colors.black54
      ),
      
     Coffe()),
       ScreenHiddenDrawer(
        ItemHiddenMenu(
        name: 'Setting',
        baseStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),
        selectedStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),
         colorLineSelected: Colors.black54,
      ),
      
     Setting()),
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: 'Your favourit',
        baseStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),
        selectedStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),
                colorLineSelected: Colors.black54,
      ),
      
    Fav_type()),
    ];
  }
  @override
  Widget build(BuildContext context) {

    return HiddenDrawerMenu(//verticalScalePercent: 90,
    slidePercent: 60,
      backgroundColorAppBar: Colors.grey[900],elevationAppBar: 0,
      screens:pages,
    actionsAppBar: [IconButton(onPressed: (){}, icon: 
    Icon(Icons.person,size: 25,))],
     backgroundColorMenu:Colors.orange)
     ;
  }
}