import 'package:flutter/material.dart';
import 'package:instagram/bottom_navbar_widgets/account_widget.dart';
import 'package:instagram/bottom_navbar_widgets/home_widget.dart';
import 'package:instagram/bottom_navbar_widgets/reels_widget.dart';
import 'package:instagram/bottom_navbar_widgets/search_widget.dart';
import 'package:instagram/bottom_navbar_widgets/shop_widget.dart';

import 'package:instagram/models/colors.dart';
import 'package:instagram/views/cusappbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = "/";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> _children = const [
    HomeWidget(),
    SearchWidget(),
    ReelsWidget(),
    ShopWidget(),
    AccountWidget()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeColor,
      child: Scaffold(
        appBar: (_selectedIndex == 0)
            ? const CustomizedAppbar()
            : AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
        extendBodyBehindAppBar: _selectedIndex == 0 ? false : true,
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          elevation: 10,
          selectedItemColor: const Color.fromARGB(255, 0, 140, 255),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Reels',
              icon: Icon(Icons.video_camera_front),
            ),
            BottomNavigationBarItem(
              label: 'Shop',
              icon: Icon(Icons.shop),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
