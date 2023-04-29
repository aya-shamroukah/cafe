// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Fav_type extends StatefulWidget {
  const Fav_type({super.key});

  @override
  State<Fav_type> createState() => _Fav_typeState();
}

class _Fav_typeState extends State<Fav_type> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: 
    SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
                Positioned(top: 5,
                  right: 5,
                  left: 5,
                  bottom: 400,
                    child:
                    Image.asset('images/cap4.jpg',fit: BoxFit.cover,width: 400,height: 400,)
),
            SizedBox(
                    width: double.infinity,
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Container( 
                      margin: EdgeInsets.only(top: 400),
                               decoration: BoxDecoration(color: Colors.brown[700],
                                borderRadius: BorderRadius.only
                     (  topLeft:Radius.circular(30),
                     topRight:  Radius.circular(30),
                     bottomLeft: Radius.circular(30),
                     bottomRight: Radius.circular(30))),
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Column(
                          children: [
                            Text('Cappuccino',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text('whith milk',style: TextStyle(fontSize: 15),),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(Icons.star,color: Color.fromARGB(255, 248, 224, 2),),
                                  Icon(Icons.star,color: Color.fromARGB(255, 248, 224, 2),),
                              Icon(Icons.star,color: Color.fromARGB(255, 248, 224, 2),), 
                              Icon(Icons.star), Icon(Icons.star)
                              ],
                            ),
                           
                    
                          ],
                        ),
                        SizedBox(width: 130,),
                       Container(decoration: BoxDecoration(color: Color.fromARGB(255, 46, 45, 45),
                                borderRadius: BorderRadius.circular(12)),
                                padding: EdgeInsets.all(12),
                                  child: Icon(Icons.add,color: Colors.orange,)),
                         SizedBox(width: 15,),         
                       Container(decoration: BoxDecoration(color: Color.fromARGB(255, 46, 45, 45),
                                borderRadius: BorderRadius.circular(12)),
                                padding: EdgeInsets.all(12),
                                
                                  child: Icon(Icons.add,color: Colors.orange,)),
                       ],),
                     ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('Size',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                     )
                ],
              ),
            ),
       
                   
      ]),
    )
    ,)

   ;
  }
}