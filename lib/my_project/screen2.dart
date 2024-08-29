import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../main.dart';
class Screen2 extends StatelessWidget {
   Screen2({super.key});
   CountController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Center(

        child:  Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<CountController>(
           //   init: CountController(),
              builder: (controller)=>Text(
                "${controller.counter}",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            )

          ],
        ),
      ),
    );
  }
}
