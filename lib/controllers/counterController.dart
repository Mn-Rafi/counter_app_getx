import 'package:get/get.dart';

class CounterCOntroller extends GetxController{
  var count = 0.obs;
  void increment(){
    count++;
  }
}