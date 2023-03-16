import 'package:flutter/material.dart';
import 'package:travel/constants/style.dart';
import 'package:travel/views/menu_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(23),
                    border: Border.all(color: Colors.blue)),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: size.height * .3,
                    bottom: size.height * .1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Gezi Rehberi uygulamasi: birçok ortak hayallerde buluşturur',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 65),
                      TextField(
                        cursorRadius: Radius.circular(22),
                        controller: emailController,
                        cursorColor: Colors.orange,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.cyan,
                            ),
                            hintText: 'Kullanici mail'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: isVisible ? true : false,
                        cursorColor: Colors.orange,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () {
                              if (isVisible) {
                                setState(() {
                                  isVisible = false;
                                  print('ss');
                                });
                              } else {
                                setState(() {
                                  isVisible = true;
                                  print('kk');
                                });
                              }
                            },
                            child: isVisible
                                ? const Icon(Icons.remove_red_eye)
                                // ignore: prefer_const_constructors
                                : Icon(
                                    Icons.remove_red_eye_outlined,
                                  ),
                          ),
                          prefixIcon: const Icon(
                            Icons.vpn_key,
                            color: Colors.cyan,
                          ),
                          hintText: 'Parola',
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuPage(),
                  ),
                );
              },
              child: const Text(
                'Giriş yap',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
