// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
    // ignore: unnecessary_new
    GlobalKey<FormState> form = new GlobalKey<FormState>();
  // ignore: unnecessary_new
  TextEditingController password= new TextEditingController();
var password1;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left:10.0,right: 10,top: 20),
            child: Column(children: [
              //user name
              TextFormField(
               decoration: InputDecoration(focusedBorder: 
               OutlineInputBorder(borderSide:
               BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(15)
                ),
                 enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            hintText: 'User name :',
                             prefixIcon: Icon(
                              Icons.person,
                              color: Colors.orange,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 50))
               ) ,
              ),
              SizedBox(height: 15,),
              //phone
               TextFormField(
                            keyboardType: TextInputType.phone,
          
               decoration: InputDecoration(focusedBorder: 
               OutlineInputBorder(borderSide:
               BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(15)
                ),
                 enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            hintText: 'Phone :',
                             prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.orange,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 50))
               ) ,
              ),
              SizedBox(height: 15,),
              //password
               TextFormField(
                validator: (text) {
                        if (text!.length < 10) {
                          return 'لا يمكن ان تكون اقل من 8 احرف';
                        }
                        if (text.length > 16) {
                          return 'لا يمكن ان تكون اكثر من 16 احرف';
                        }
                      },
                      controller: password,
                        onSaved: (text) {
                        password1= text;
                      },
                obscureText: true,
               decoration: InputDecoration(focusedBorder: 
               OutlineInputBorder(borderSide:
               BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(15)
                ),
                 enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            hintText: 'Password : ',
                             prefixIcon: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.orange,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 50))
               ) ,
              ),SizedBox(height: 15,),
              //locatin
              TextFormField(
               keyboardType: TextInputType.text,        
               decoration: InputDecoration(focusedBorder: 
               OutlineInputBorder(borderSide:
               BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(15)
                ),
                 enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            hintText: 'Location :',
                             prefixIcon: Icon(
                              Icons.location_on,
                              color: Colors.orange,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 50))
               ) ,
              ),
              SizedBox(height: 15,),
               Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: (() {
                            var data = form.currentState;
                            if (data!.validate()) {
                              data.save();
                              print('$password');
                            } else {
                              print('no');
                            }
                          }),
                          child: Text('save'),
                        ),
                        Text('  👌',style: TextStyle(fontSize: 20),)
            ]),
         ] ),
      )),
    );
  }
}