import 'package:get/get.dart';

class HomeScreenController extends GetxController
{
  RxInt counter = 0.obs;
   void increment (){
     counter++;
   }
   void restart()
   {
     counter = 0.obs ;
     update();
   }
}