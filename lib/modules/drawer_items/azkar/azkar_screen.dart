import 'package:flutter/material.dart';

class azkarScreen extends StatelessWidget {
  const azkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Text('الأذكار'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
            children: [
          ListTile(title: Text('أذكار الصباح',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 25),),onTap: (){},),
          ListTile(title: Text('أذكار المساء',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 25)),onTap: (){},),
          ListTile(title: Text('أذكار النوم',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 25)),onTap: (){},),
          ListTile(title: Text('أذكار بعد الصلاة',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 25)),onTap: (){},),
          ListTile(title: Text('الرقية الشرعية',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 25)),onTap: (){},),
          ListTile(title: Text('دعاء الركوب',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 25)),onTap: (){},),

        ]),
      ),
    );
  }
}
