import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imgList = [
    'assets/image/dodo.jpeg',
    'assets/image/download.jpeg',
    'assets/image/images.jpeg',
    'assets/image/red.jpeg',
    'assets/image/travel.jpeg',
  ];

  int _current = 0;
  List<T> nap<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text('TTT'),
            CarouselSlider(
              options: CarouselOptions(
                  height: size.height * .3,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  // autoPlay: true,
                  reverse: true,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(
                    seconds: 2,
                  ),
                  autoPlayInterval: Duration(
                    seconds: 2,
                  ),
                  onPageChanged: (index, context) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: imgList.map((imgAsset) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    width: size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(imgAsset, fit: BoxFit.contain),
                  );
                });
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: nap<Widget>(imgList, (index, url) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                  decoration: BoxDecoration(
                      color: _current == index ? Colors.purple : Colors.green,
                      shape: BoxShape.circle),
                );
              }),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ListTile(
                            title: Text('Gezii'),
                            trailing: Icon(Icons.location_city),
                            subtitle: Text('London, Moscow Porto'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ListTile(
                            title: Text('Gezii'),
                            trailing: Icon(Icons.location_city),
                            subtitle: Text('Japon, Chin, Corey'),
                          ),
                        ),
                      ],
                    ),
                  ),
                    Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListTile(
                        title: Text('Gezii'),
                        trailing: Icon(Icons.location_city),
                        subtitle: Text('Kirgizistan ,Kazakistan, Özbekistan'),
                      ),
                    ),
                  ],
                ),
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
