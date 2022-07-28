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
      Home(),
      Home(),
      Home(),
    ];

    return Scaffold(
      body: Center(
        child: _pages.elementAt(selected),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        fixedColor: Colors.white,
        currentIndex: selected,
        showUnselectedLabels: false,
        onTap: IconTap,

        items: [
          BottomNavigationBarItem(
            activeIcon: SizedBox(height: 50, width: 60,
              child: Container(
              decoration: const BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.all(Radius.circular(22))
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: SvgPicture.asset('assets/icons/home.svg', color: Colors.white, height: 10, width: 10,),
              ),
            ),),
            icon: SizedBox(height:20 ,child: SvgPicture.asset('assets/icons/home.svg', color: Colors.grey,),),
            label: ''
          ),

          BottomNavigationBarItem(
            activeIcon: SizedBox(height: 50, width:60,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.all(Radius.circular(22))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset('assets/icons/heart.svg',color: Colors.white,),
                )
              )
            ),
            icon: SizedBox(height:20 ,child: SvgPicture.asset('assets/icons/heart.svg', color: Colors.grey,),),
            label: ''
          ),

          BottomNavigationBarItem(
            activeIcon: SizedBox(height: 50, width:60,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: SvgPicture.asset('assets/icons/bookmark.svg',color: Colors.white,),
                  )),),
            icon: SizedBox(height:20 ,child: SvgPicture.asset('assets/icons/bookmark.svg', color: Colors.grey,),),
            label: ''
          ),

          BottomNavigationBarItem(
            activeIcon: SizedBox(height: 50, width:60,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: SvgPicture.asset('assets/icons/user.svg',color: Colors.white,),
                  )),),
            icon: SizedBox(height:20 ,child: SvgPicture.asset('assets/icons/user.svg', color: Colors.grey,),),
            label: ''
          ),


        ],
      ),
    );
  }
}