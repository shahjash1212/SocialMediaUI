import 'package:flutter/material.dart';

class BottomMenuBarIcons extends StatelessWidget {
  const BottomMenuBarIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromARGB(255, 39, 40, 48),
          primaryColor: Colors.white,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.grey))),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        // elevation: 0,

        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: 'add', icon: Icon(Icons.add_circle_outline_sharp)),
          BottomNavigationBarItem(
              label: 'fav', icon: Icon(Icons.favorite_border_rounded)),
          BottomNavigationBarItem(label: 'avtar', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
