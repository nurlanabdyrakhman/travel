import 'package:flutter/material.dart';
import 'package:travel/constants/style.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isSwiched=false;
  bool isNotification=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('Ayarlar'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
         
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bildirimler'),
                Switch(value: isSwiched, onChanged: (value){
                  setState(() {
                    isSwiched=value;
                  });
                })
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bildirimler'),
                   Switch(
                   value: isNotification,
                   onChanged: (value){
                    setState(() {
                      isNotification=value;
                    });
                   },
                   activeColor: Colors.orange,),
                ],
              ),
           
             
          ],),
        ),
      )
    );
  }
}
