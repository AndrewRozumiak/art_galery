import 'package:art_galery/pages/objects/hol.dart';
import 'package:art_galery/pages/my_home_page.dart';
import 'package:art_galery/pages/objects/ratush_page.dart';
import 'package:art_galery/pages/objects/turinfo_center.dart';
import 'package:flutter/material.dart';

import 'museum.dart';
import 'old_fortress_page.dart';

class Objects extends StatelessWidget {
  final List<String> photos = [
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
    'assets/images/img_5.png',
    'assets/images/img_6.png',
  ];
  final List<String> titles = [
    'Міська Ратуша',
    'Галерея мистецтв',
    'Стара фортеця',
    'Музей старожитностей',
    'Виставкова зала',
    'Туристично-Інформаційний\nцентр'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(60, 60, 70, 1),
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Number of columns
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 3 / 2,
        ),
        itemCount: photos.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Відкриття відповідної сторінки при натисканні на картку
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RatushPage()), // Ваша сторінка Page1
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()), // Ваша сторінка Page2
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OldFortressPage()), // Ваша сторінка Page2
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Museum()), // Ваша сторінка Page2
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hol()), // Ваша сторінка Page2
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TurinfoCenter()), // Ваша сторінка Page2
                  );
                  break;
              // Додайте випадки для інших сторінок за необхідності
                default:
                // За замовчуванням нічого не робити
              }
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(photos[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.5),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      titles[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
