import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Column(
          children: [
            Text('1'),
            Text('2'),
            Text('3'),
            Text('4'),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: 'user'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.logout,
                ),
                label: 'keluar'),
          ],
        ),
      ),
    );
  }
}
