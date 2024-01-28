import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  var _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          Center(
            child: Text('Page 1'),
          ),
          Center(
            child: Text('Page 2'),
          ),
          Center(
            child: Text('Page 3'),
          ),
          Center(
            child: Text('Page 4'),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        selectedItemColor: Colors.deepPurple,
        currentIndex: _currentIndex,
        onTap: (p0) {
          _pageController.animateToPage(
            p0,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
          );
          setState(() {
            _currentIndex = p0;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.calendar),
            title: const Text("Schedule"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.search),
            title: const Text("Search"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.person),
            title: const Text("Profile"),
          ),
        ],
      ),
    );
  }
}
