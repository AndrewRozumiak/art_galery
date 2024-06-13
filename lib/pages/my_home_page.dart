import 'package:art_galery/pages/ivents.dart';
import 'package:art_galery/pages/objects/objects.dart';
import 'package:flutter/material.dart';
import '../components/home_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Variable to store the selected page index

  final List<Widget> _pages = [ // List of pages
    HomeList(),
    Objects(),
    Ivents(),
  ];
  final List<String> _pageTitles = [ // List of page titles
    'Галерея мистецтв',
    'Об\'єкти',
    'Події',
    'Контакти',
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(150, 255, 60, 0.9),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(_pageTitles[_selectedIndex]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/menu_background.png'),
                  opacity: 0.5,
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'Меню',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.roundabout_left_outlined),
              title: const Text('Про нас'),
              onTap: () => _onItemTapped(0), // Update to change the page index
            ),
            ListTile(
              leading: const Icon(Icons.emoji_objects_outlined),
              title: const Text('Об\`єкти'),
              onTap: () => _onItemTapped(1), // Update to change the page index
            ),
            ListTile(
              leading: const Icon(Icons.art_track),
              title: const Text('Події'),
              onTap: () => _onItemTapped(2),
            )
          ],
        ),
      ),
      body: Expanded( // Added Expanded widget
        child: _pages[_selectedIndex],
      ),
    );
  }
}
