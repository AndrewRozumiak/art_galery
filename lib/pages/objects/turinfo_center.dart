import 'package:art_galery/components/texts.dart';
import 'package:flutter/material.dart';

class TurinfoCenter extends StatelessWidget {
  const TurinfoCenter({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(150, 255, 60, 0.9),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: const Text('Туристичний центр'),
      ),
      body: Container(
        color: const Color.fromRGBO(60, 60, 70, 1),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Text(
                    'Туристичний центр',
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
                    child: Image.asset('assets/images/img_6.png'),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    textAboutTurInfoCentr,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: const Column(
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
                      Text(
                        'Пн 09:00-16:00\nВт–Нд 09:00-17:00',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}