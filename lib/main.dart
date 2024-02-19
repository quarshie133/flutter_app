import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          buttonName = 'Clicked!';
                        },
                      );
                    },
                    child: Text(buttonName)),
                ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          buttonName = 'Clicked!';
                        },
                      );
                    },
                    child: Text(buttonName)),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings))
          ],
          currentIndex: currentIndex,
          fixedColor: Colors.blueAccent,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
