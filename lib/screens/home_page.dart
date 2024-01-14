import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:momotalk/utils/constant.dart';
import 'package:momotalk/utils/info_box.dart';
import 'package:momotalk/utils/student_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectIndex = 0;

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  static List<Widget> pages = <Widget>[
    //student page
    ListView(
      children: Students().studentsName.map((String name) {
        return InfoBox(
          name: name,
          message: Students().studentInfo[name].signal,
          sukiLevel: Students().studentInfo[name].sukiLevel,
          onInfoBoxTap: () {},
        );
      }).toList(),
    ),
    //message page
    Text('second page'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Row(
          children: <Widget>[
            const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              'MomoTalk',
              style: titleTextStyle,
            )
          ],
        ),
      ),
      body: Center(
        child: pages[_selectIndex], //TODO:可滚动列表
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              // color: Colors.white,
              size: 24.0,
            ),
            label: 'Students',
            backgroundColor: activeColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.commentAlt,
              // color: Colors.white,
              size: 24,
            ),
            label: 'Messages',
          )
        ],
        onTap: _onTapItem,
        currentIndex: _selectIndex,
        selectedItemColor: activeColor,
        backgroundColor: inactiveColor,
      ),
    );
  }
}
