import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //  int count = 1;
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    /// here we check build method is called or not
    print('Build method is called!');
    return Scaffold(
        appBar: AppBar(
          title: const Text("Getx Counter app"),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            FloatingActionButton(
              onPressed: () {
                controller.decrement();

                /*  setState(() {
                count++;
              });*/
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
            FloatingActionButton(
              onPressed: () {
                controller.increment();

                /*  setState(() {
                count++;
              });*/
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
        body: Center(
          child: Obx(() {
            print("Obx Is Update!");
            return Text(controller.count.toString() , style: TextStyle(fontSize: 100 , fontWeight: FontWeight.bold),);
          }),
        )

        /* Center(
          child: Text(
        count.toString(),
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      )),*/
        );
  }
}
