import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_overview/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterCOntroller _counterController = Get.find();
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Screen was touched ${_counterController.count.value} times'),
              SizedBox(
                width: double.maxFinite,
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Go to Screen 1'))
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
