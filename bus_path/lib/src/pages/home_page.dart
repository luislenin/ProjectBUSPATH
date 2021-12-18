// ignore_for_file: annotate_overrides

import 'package:bus_path/src/utils/main_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _selectedIndex = 2;

  void initState() {
    super.initState();
  }

  final List<String> _options = [" Página Inicial ", " Sectores ", " Paradas de Buses "];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('< Bus - ' + _options[_selectedIndex]+ " - Path >")),
      body: contentWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _selectedIndex = index;
          setState(() {
            
          });
        },
        type: BottomNavigationBarType.fixed,
        items: menuOptions
            .map((e) =>
                BottomNavigationBarItem(icon: Icon(e.icon), label: e.title))
            .toList(),
        currentIndex: _selectedIndex,
      ),
    );
  }
}