
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


class BoslaScreen extends StatefulWidget {
  const BoslaScreen({Key? key}) : super(key: key);

  @override
  State<BoslaScreen> createState() => _BoslaScreenState();
}

class _BoslaScreenState extends State<BoslaScreen> {
  bool hasPermission = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    checkPermissionState();

  }

  void checkPermissionState(){
    Permission.locationWhenInUse.status.then((status)
    {
      if(mounted)
        {
          setState(() {
            hasPermission == (status == PermissionStatus.granted);
          });
        }else{

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body : Builder(builder: (context){
       if(hasPermission)
         {
           return buildCompass();
         }else{
         return buildPermissionSheet();
       }
     })
    );
  }



  Widget buildCompass(){
    return Center(
      child: Container(
        child: Image.asset('assets/images/comp_img.png'),
      ),
    );
  }



  Widget buildPermissionSheet(){
    return Center(
      child: ElevatedButton(
          onPressed: (){
            Permission.locationWhenInUse.request().then((value)
            {
              checkPermissionState();
            });
          } ,
          child: Text('request permission')),
    );
  }
}


