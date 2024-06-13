import 'package:flutter/material.dart';

import '../../components/texts.dart';

class Hol extends StatelessWidget {
  const Hol({super.key});

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
        title: Text('Виставкова зала'),
      ),
      body: Container(
        color: const Color.fromRGBO(60, 60, 70, 1),
        child: SingleChildScrollView(// Added to handle overflow
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 20), // Added top padding for better spacing
                  child: Text(
                    textAlign: TextAlign.center,
                    'Виставкова зала',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18, // Added font size for better readability
                    ),
                  )
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/img_5.png'),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(textAboutHol, style: const TextStyle(color: Colors.white),),
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
                      'Пн 09:00-16:00\n'
                          'Вт–Нд 09:00-17:00',
                      style: TextStyle(fontSize: 16,color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
