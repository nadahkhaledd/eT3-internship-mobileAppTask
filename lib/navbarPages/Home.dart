import 'package:et3_task_mobileapp/coffeeItem.dart';
import 'package:et3_task_mobileapp/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Home extends StatelessWidget
{
  List<item> items = [
    item(img: "assets/images/image1.png", name: "Coffee", address: "New Cairo, Egypt", rate: 4.4, reviews: 429),
    item(img: "assets/images/image2.png", name: "Coffee", address: "New Cairo, Egypt", rate: 4.4, reviews: 429),
    item(img: "assets/images/image3.png", name: "Coffee", address: "New Cairo, Egypt", rate: 4.4, reviews: 429),
    item(img: "assets/images/image4.png", name: "Coffee", address: "New Cairo, Egypt", rate: 4.4, reviews: 429),
  ];
  @override
  Widget build(BuildContext context) {
    // final _isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    // final actions = [
    //   FloatingSearchBarAction(
    //     showIfOpened: false,
    //     child: CircularButton(
    //       icon: const Icon(Icons.place),
    //       onPressed: () {},
    //     ),
    //   ),
    //   FloatingSearchBarAction.searchToClear(
    //     showIfClosed: false,
    //   ),
    // ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Coffee first.\nSchemes later.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Roboto"),),
                Image.asset("assets/images/user.png"),
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 15),
            //   child: FloatingSearchBar(
            //     height: 30,
            //     width: MediaQuery.of(context).size.width*1/3,
            //     automaticallyImplyBackButton: false,
            //     controller: FloatingSearchBarController(),
            //     clearQueryOnClose: true,
            //     hint: 'search',
            //     iconColor: Colors.grey,
            //     transitionDuration: const Duration(milliseconds: 800),
            //     transitionCurve: Curves.easeInOutCubic,
            //     physics: const BouncingScrollPhysics(),
            //     actions: actions,
            //     debounceDelay: const Duration(milliseconds: 500),
            //     onQueryChanged: (query){
            //
            //     },
            //     scrollPadding: EdgeInsets.zero,
            //     transition: CircularFloatingSearchBarTransition(spacing: 16),
            //     builder: (context, _) {
            //       return Container();
            //     },
            //     body: Container(),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 55, width: 55,
                    decoration: const BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(19))
                    ),
                    child: Center(
                      child: SvgPicture.asset("assets/icons/search.svg", color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Coffee products", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500), textAlign: TextAlign.start,),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisExtent: 300,
                    ),
                    itemCount: items.length,
                    itemBuilder: (BuildContext, index){
                      return coffeeItem(context, items[index]);
                    },
                ),
                ),
              ),

          ],
        ),
      ),
    );
  }

}