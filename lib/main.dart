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
          child: currentIndex == 0
              ? Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.orange,
                            ),
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
                )
              : Image.asset('images/portfolio7.jpg'),
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
