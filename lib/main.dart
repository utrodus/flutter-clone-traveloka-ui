import 'package:clone_traveloka/pages/Inbox.dart';
import 'package:clone_traveloka/pages/awal.dart';
import 'package:clone_traveloka/pages/pesanan.dart';
import 'package:clone_traveloka/pages/profile.dart';
import 'package:clone_traveloka/pages/simpan.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _layoutPage = [
    Awal(),
    Simpan(),
    Pesanan(),
    Inbox(),
    Profile()
  ];

  void _onTabItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text('Awal')
              ),

            BottomNavigationBarItem(
                icon: Icon(Icons.save),
                title: Text('Simpan')
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.view_agenda),
                title: Text('Pesanan')
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.inbox),
                title: Text('Inbox')
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Akun Saya')
            ),
          ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
