import 'package:flutter/material.dart';
import 'package:travel/constants/style.dart';
import 'package:travel/views/home_page.dart';
import 'package:travel/views/launch_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordControllerAgain = TextEditingController();
  //göz için
  bool isVisible = true;
  //cinsiyet için
  bool woman = false;
  bool man = false;

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    top: size.height * .1,
                    bottom: size.height * .1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT89AqjdTFoB_RXgeyE8PgdLqdtk_rFFXXi1w&usqp=CAU'),
                      ),
                      TextField(
                        cursorRadius: Radius.circular(22),
                        controller: nameController,
                        cursorColor: Colors.orange,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.cyan,
                            ),
                            hintText: 'Kullanici adi'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: passwordControllerAgain,
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
                          hintText: 'Parola tekrar',
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              activeColor: Colors.black,
                              title: Text('Kadin'),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: woman,
                              onChanged: (newValue) {
                                setState(() {
                                  woman = newValue!;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                              activeColor: Colors.black,
                              title: Text('Erkek'),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: man,
                              onChanged: (newValue) {
                                setState(() {
                                  man = newValue!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          child: DropdownButton(
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                value=_value;
                              });
                            },
                            // ignore: prefer_const_literals_to_create_immutables
                            items: [
                              DropdownMenuItem(child: Text('naryn'), value: 1),
                              DropdownMenuItem(child: Text('Köl'), value: 2),
                              DropdownMenuItem(child: Text('Koçkor'), value: 3),
                            ],
                            hint: Text('Şehir İsmi'),
                            
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
                    builder: (context) => const LaunchPage(),
                  ),
                );
              },
              child: const Text(
                'Kayit ol',
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
