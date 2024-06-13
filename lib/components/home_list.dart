import 'package:flutter/material.dart';
import 'package:art_galery/components/texts.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color.fromRGBO(60, 60, 70, 1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                'КАМ\'ЯНЕЦЬ-ПОДІЛЬСЬКИЙ ДЕРЖАВНИЙ ІСТОРИЧНИЙ МУЗЕЙ-ЗАПОВІДНИК',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/img.png'),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(textAboutMuseum, style: const TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: screenWidth,
              child: const Card(
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Color.fromRGBO(150, 255, 60, 0.4),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ГРАФІК РОБОТИ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Музей працює без вихідних',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Пн: 09:00 до 16:00\n'
                            'Вт-Нд: 09:00 до 17:00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Старий замок',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Пн: 09:00 до 18:00\n'
                            'Вт-Нд: 09:00 до 19:00',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: screenWidth,
              child: const Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Color.fromRGBO(150, 255, 60, 0.4),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'КОНТАКТИ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Телефон: (03849)7-60-14',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Email: museum.kp@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Адреса: вулиця Іоанно Предтичинська, 2',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}