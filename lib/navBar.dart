import 'package:et3_task_mobileapp/navbarPages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class navBar extends StatefulWidget
{
  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int selected=0;

  void IconTap(int index)
  {
    setState(() {
      selected=index;

    });

  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      Home(),
    ];

    return Scaffold(
      body: Center(
        child: _pages.elementAt(selected),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        fixedColor: Colors.grey,
        currentIndex: selected,
        showUnselectedLabels: false,
        onTap: IconTap,

        items: [
          BottomNavigationBarItem(
            activeIcon: SizedBox(height: 30,child: SvgPicture.asset('assets/icons/home.svg', color: Colors.white)),
            icon: SizedBox(height:20 ,child: SvgPicture.asset('assets/icons/home.svg', color: Colors.grey,),),
            label: ''
          ),

          BottomNavigationBarItem(
            activeIcon: SizedBox(height: 30,child: SvgPicture.asset('assets/icons/hear.svg',color: Colors.white,),),
            icon: SizedBox(height:20 ,child: SvgPicture.asset('assets/icons/heart.svg', color: Colors.grey,),),
            label: ''
          ),

          BottomNavigationBarItem(
            activeIcon: SizedBox(height: 30,child: SvgPicture.asset('assets/icons/bookmark.svg',color: Colors.white,),),
            icon: SizedBox(height:20 ,child: SvgPicture.asset('assets/icons/bookmark.svg', color: Colors.grey,),),
            label: ''
          ),

          BottomNavigationBarItem(
            activeIcon: SizedBox(height: 30,child: SvgPicture.asset('assets/icons/user.svg',color: Colors.white,),),
            icon: SizedBox(height:20 ,child: SvgPicture.asset('assets/icons/user.svg', color: Colors.grey,),),
            label: ''
          ),


        ],
      ),
    );
  }
}