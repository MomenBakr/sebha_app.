import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebha_app/modules/drawer_items/ayet_al_korsy/ayet_korsy_screen.dart';
import 'package:sebha_app/modules/drawer_items/azkar/azkar_screen.dart';
import 'package:sebha_app/modules/drawer_items/bosla/bosla_screen.dart';
import 'package:sebha_app/modules/home/home_controller.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      //extendBody: true,
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text('تسبيح',style: TextStyle(color: Colors.black,fontSize: 25),textDirection: TextDirection.rtl,),
        )),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/img5.jpeg',),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45 , BlendMode.darken)
          ),

        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100,left:15 ,right:15 ,bottom:15 ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    items: ["سُبْحَانَ اللَّهِ", "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ", "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ", 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ'
                    ,'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ.',
                      'لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ','الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ',
                      'الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد','أستغفر الله','الْلَّهُ أَكْبَرُ',],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Select*",
                        hintText: " فسبح بحمد ربك واستغفره إنه كان تواباً",
                      ),
                    ),
                    onChanged: print,
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Center(
                child: InkWell(
                  child: Container(
                    child: Center(
                        child: GetX<HomeScreenController>(
                          init:HomeScreenController() ,
                            builder: (value) => Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${value.counter.value}',style: TextStyle(fontSize: 30),),
                                TextButton(onPressed: (){
                                 value.increment();
                                }, child: Text('اضغط')),
                              ],
                            ))),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                        color: Colors.lightBlue.withOpacity(1),
                          offset: Offset(0,5),
                          spreadRadius: -9,
                          blurRadius: 60,
                          blurStyle:BlurStyle.solid,
                      )]
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: GetBuilder<HomeScreenController>(
        builder: (controller) => FloatingActionButton
          (
          backgroundColor: Colors.white,
          child:Icon(Icons.restart_alt,size: 30,color: Colors.black,),
          onPressed: (){
            controller.restart();
          },
        ),
      ),

      drawer: Drawer(
         backgroundColor: Colors.white,
        elevation: 50,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30))
        ),
        child: ListView(
          children: [
             DrawerHeader(
               //duration: Duration(seconds: 3),
               child:Container(

                 child: Center(child: Text('Available items')),
                 decoration: BoxDecoration(color: Colors.amber),
               ),

             ),
            ListTile(
                onTap: (){
                  Get.to(HomeScreen());
                },
                title:Row(
              children: [
                Icon(Icons.home,color: Colors.amber[700],),
                SizedBox(width: 10,),
                Text(textDirection: TextDirection.rtl,'Home',style: TextStyle(fontSize: 20),),
              ],
            )),
            ListTile(
              onTap: (){
                Get.to(AyetElkorsyScreen());
              },
              title: Text(
                textDirection: TextDirection.rtl,'آية الكرسي',
                style: TextStyle(fontSize: 20),),),
            ListTile(
              onTap: (){
                Get.to(azkarScreen());
              },
              title: Text(
                textDirection: TextDirection.rtl,'الأذكار',
                style: TextStyle(fontSize: 20),
              ),),
            ListTile(
              onTap: (){
                Get.to(BoslaScreen());
              },
              title: Text(
                textDirection: TextDirection.rtl,'القبلة',
                style: TextStyle(fontSize: 20),
              ),),
          ],
        ),
      ),
    );
  }
}
