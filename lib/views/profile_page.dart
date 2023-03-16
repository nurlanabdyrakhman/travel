import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.amber,
            height: size.height,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              height: size.height * .62,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 65),
            child: Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 55,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsq7Ac1J3I2vKSdP6PxpI3kJM8-xkgq-WIFQ&usqp=CAU',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * .2),
            child: const Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                // width: 400,
                height: 240,
                child: AutoSizeText(
                  'NURLAN ABDYRAKHMANOV',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  maxLines: 2,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: size.height * .24),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.pink),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.email),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.purple),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.phone),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.chat),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 155),
            child: Column(
              children: [
                SizedBox(
                  // width: 400,
                  //  height: 240,
                  child: AutoSizeText(
                    'Hakkinda',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  // width: 400,
                  // height: 240,
                  child: AutoSizeText(
                    ' Naryn Universitesi',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 555,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              '27',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                            AutoSizeText(
                              'haziran',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                            ),
                          ]),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          'Kirgizistan gezisi',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                        AutoSizeText(
                          'Naryn İsyk-kol. Karakol',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
