import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  final _widgetOptions = [
    Text('Index 0 : 홈'),
    Text('Index 1 : 히스토리')
  ];

  _tapNavBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('헬린이를 위한 홈트레이닝')
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: '히스토리')
        ],
        fixedColor: Colors.deepPurple,
        onTap: _tapNavBar,
      ),
    );
  }
}
