

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movie_app/my_project/screen1.dart';
import 'package:movie_app/my_project/screen2.dart';

import '../main.dart';
class HomePage extends StatelessWidget {
  final controller=Get.lazyPut(()=>CountController(),);
   HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: (){
              Get.to(()=>Screen1());
            },child: Text("screen1",style: TextStyle(color: Colors.white),),color: Colors.indigo,),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              Get.to(()=>Screen2());
            },child: Text("screen2",style: TextStyle(color: Colors.white),),color: Colors.indigo,)
          ],
        ),
      ),
    );
  }
}
