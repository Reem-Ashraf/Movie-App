import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../main.dart';
class Screen1 extends StatelessWidget {
   Screen1({super.key});
   ///dependency injection
  CountController controller=Get.put(CountController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Center(

        child: GetBuilder<CountController>(
          // init: CountController(),
          builder:(CountController)=> Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                "${controller.counter}",
                style: Theme.of(context).textTheme.headlineMedium,
              )

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ensure controller is not null before calling increment
          if (controller != null) {
            controller.increment();
          }},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
