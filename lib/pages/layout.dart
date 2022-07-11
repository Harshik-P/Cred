import 'package:cred/pages/cards_page/cards.dart';
import 'package:cred/pages/explore_page/explore.dart';
import 'package:cred/pages/rewards_page/rewards.dart';
import 'package:cred/pages/shop_page/shop.dart';

import '../pages/Homepage/homepage.dart';
import '../pages/pay_pages/pay.dart';
import 'package:flutter/material.dart';


class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {


  List<Widget> pages = const [
    HomePage(),
    CardsPage(),
    PayPage(),
    Rewards(),
    ShopPage(),
    ExplorePage(),
  ];


  int _selectedIndex = 0;

  void onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[ 
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home, color: Colors.white,),
            label: "home"
          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.card_membership, color: Colors.white,),
            label: "cards",
          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.payment, color: Colors.white,),
            label: "pay",
          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.gif_box, color: Colors.white,),
            label: "rewards",
          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.shop, color: Colors.white,),
            label: "shop",
          ),

          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.more, color: Colors.white,),
            label: "more",
          ),
        ],

        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: onTapped,
      ),
    );
  }
}