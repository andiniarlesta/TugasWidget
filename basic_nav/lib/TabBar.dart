import 'package:flutter/material.dart';

void main() => runApp(const Tabbar());

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
           titleTextStyle: TextStyle(
            color: Colors.black, 
            fontSize: 24,         
            fontWeight: FontWeight.bold, 
          ),
          backgroundColor: Color.fromARGB(255, 191, 236, 255), 
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 0, 0, 0), 
            labelColor: Color.fromARGB(255, 28, 7, 1), 
            unselectedLabelColor: Color.fromARGB(255, 169, 166, 166), 
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Home Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Search Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Profile Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}