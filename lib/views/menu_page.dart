import 'package:flutter/material.dart';
import 'package:travel/constants/style.dart';
import 'package:travel/views/add_page.dart';

import 'package:travel/views/home_page.dart';
import 'package:travel/views/launch_page.dart';
import 'package:travel/views/profile_page.dart';

import 'package:travel/views/setting_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  void _onItemTepped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Gezi rehberim',
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Nurlan'),
              accountEmail: Text('Abdyrah@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY-_SzObEct5pKZ31AlX2TCyWYJOS22rYE9A&usqp=CAU',
                ),
              ),
            ),
             ListTile(
              title: Text('Anasayfa'),
              trailing: Icon(Icons.home),
              leading: Icon(Icons.car_rental_sharp),
              onTap: () {
                Navigator.pop(context);
             
              },
              
            ),
             ListTile(title: Text('Ayarlar'),leading: Icon(Icons.settings),
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage(),),);
             },
             ),
            Divider(),
            ListTile(
              title: Text('Çikiş yap'),
              trailing: Icon(Icons.favorite),
              leading: Icon(Icons.car_rental_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LaunchPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Ekle',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTepped,
      ),
      body: _selectedIndex == 0
          ? HomePage()
          : _selectedIndex == 1
              ?  AddPage()
              : ProfilePage(),
    );
  }
}
