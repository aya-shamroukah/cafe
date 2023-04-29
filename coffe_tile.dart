import 'package:flutter/material.dart';
class CoffeTile extends StatelessWidget {
final String coffeeimagepath;
final String coffeename;
final String coffeprice;
CoffeTile({required this.coffeeimagepath,
required this.coffeename,
required this.coffeprice});

  @override

  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
              padding: const EdgeInsets.only(left:25.0,bottom: 25),
              child: Container(
                padding:const EdgeInsets.all(10) ,
                width: 200,
              //color: Colors.grey,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black54
              ) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                     borderRadius: BorderRadius.circular(12),
     
                    child: Image.asset(coffeeimagepath),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        // ignore: prefer_const_constructors
                        Text(coffeename,style: TextStyle(fontSize: 20),),
                       const SizedBox(height: 4,),
                      Text('With Almond Milk',style: TextStyle(color: Colors.grey[700]),
                      )
                      ],
                      ),
                    ),
                    //price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                      Text("\$  "   +   coffeprice),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                        child: Icon( Icons.add,size: 22,))
                    ],)
                ],
              ),
              ),
            ),
    )
           
          ;
  }
}