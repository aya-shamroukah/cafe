// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/coffe/coffe_tile.dart';
import 'package:health/coffe/coffe_type.dart';
class Coffe extends StatefulWidget {
  const Coffe({super.key});

  @override
  State<Coffe> createState() => _CoffeState();
}

class _CoffeState extends State<Coffe> {
  final List Coffe_type=[
    ['Latte',true],['Coffee',false],['Cappucino',false],['Tea',false]
  ];
  int selectedindex=0;
  void coffetypeselect(int index){
    setState(() {
      //this loop make every select false
      for(int i=0;i<Coffe_type.length;i++){
        Coffe_type[i][1]=false;
      }
      Coffe_type[index][1]=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        
        bottomNavigationBar: CurvedNavigationBar(
          //currentIndex: selectedindex,
          backgroundColor: Color.fromARGB(31, 36, 36, 36),
          color: Color.fromARGB(255, 97, 96, 96),
          animationDuration: Duration(milliseconds: 400),
          height: 50,
          buttonBackgroundColor: Colors.orange,
          index: selectedindex,
    
          onTap: (index){
            setState(() {
                selectedindex=index;
            });
          },
          
        //  selectedItemColor: Colors.orange,
         // unselectedItemColor: Colors.white54,
          items: [
         Icon(Icons.home,),
          Icon(Icons.favorite),
            Icon(Icons.notifications),
        ],
        
        ), 
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            //find the best coffee for you
            Padding(
              padding:  EdgeInsets.
              only(left:25.0,right: 25,top: 5),
              child: Text('Find the best coffee for you',
              style: GoogleFonts.bebasNeue(fontSize: 56,color: Colors.white),
              ),
            ),
            SizedBox(height: 25,),
        
            //search bar
             Padding(
               padding:  EdgeInsets.symmetric(horizontal:12.0),
               child: TextField(decoration:
                
               InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee',
                focusedBorder: OutlineInputBorder(
                  
                  borderSide: BorderSide(color: Colors.grey.shade600)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                  )
                  ),
                ),
             ),
        
            //list view of coffee
           SizedBox(height: 25,),
           //list view 
           Container(height: 50,
           child: Expanded(
             child: ListView.builder(
              itemCount: Coffe_type.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                
                return Column(
                  children: [
                    Coffee_type(
                      coffee_type: Coffe_type [index][0],
                     isSelect: Coffe_type[index][1], 
                     ontap: (){
                      coffetypeselect(index);
                      print(index);
                     }),
                     
                  ],
                );
              },
              
             ),
           ),),
           //coffe tile
           Flex(direction: Axis.horizontal,
             children:[ Expanded(
               child: Container(height:420,
                 child: ListView (
                  scrollDirection: Axis.horizontal,
                  children: [
                CoffeTile(
                  coffeeimagepath: 'images/images.jpg',
                  coffeename: 'Latte',
                  coffeprice: '4.20',
                 ) ,
                CoffeTile(
                  coffeeimagepath: 'images/images1.jpg',
                  coffeename: 'Coffee',
                  coffeprice: '4.00',
                 ) ,
                CoffeTile(
                  coffeeimagepath: 'images/cap2.jpg',
                  coffeename: 'Cappuccino',
                  coffeprice: '4.50',
                 ) ,CoffeTile(
                  coffeeimagepath: 'images/tea.jpg',
                  coffeename: 'Tea',
                  coffeprice: '4.23',
                 ) 
                 ],),
               ),
             ),
           ] )
        
        
          ]
          ),
      ),
    );
  }
}