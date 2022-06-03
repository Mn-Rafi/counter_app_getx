import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_overview/controllers/counterController.dart';
import 'package:getx_overview/screens/other.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final CounterCOntroller counterCOntroller = Get.put(CounterCOntroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicks : ${counterCOntroller.count.value}'),
            SizedBox(
              width: double.maxFinite,
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(OtherScreen());
                },
                child: Text('Go to Screen 2'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterCOntroller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
