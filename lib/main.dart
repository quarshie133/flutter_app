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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyAppExt());
  }
}




class MyAppExt extends StatefulWidget {
  const MyAppExt({super.key});

  @override
  State<MyAppExt> createState() => _MyAppExtState();
}

class _MyAppExtState extends State<MyAppExt> {
  String buttonName = 'Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Row(
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
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const NextPage();
                                },
                              ),
                            );
                            setState(
                              () {
                                buttonName = 'Clicked!';
                              },
                            );
                          },
                          child: const Text('Next Page')),
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
          BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings))
        ],
        currentIndex: currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
