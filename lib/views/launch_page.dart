import 'package:flutter/material.dart';
import 'package:travel/constants/style.dart';
import 'package:travel/views/login_page.dart';
import 'package:travel/views/register_page.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Gezi Rehberim',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 100, top: 50, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/image/travel.jpeg'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 66,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Giriş yap',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage(),),);
                    },
                    child: const Text(
                      'Kayit ol',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
