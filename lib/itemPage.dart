import 'package:et3_task_mobileapp/item.dart';
import 'package:et3_task_mobileapp/navBar.dart';
import 'package:et3_task_mobileapp/navbarPages/Home.dart';
import 'package:flutter/material.dart';

class itemPage extends StatelessWidget
{
  item coffeeitem;
  itemPage(this.coffeeitem);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(coffeeitem.img, height: MediaQuery.of(context).size.height*2/3,
               fit: BoxFit.fill),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height*1/2,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 8),
                        child: Text(coffeeitem.name, style: TextStyle(fontSize: 21.5, fontWeight: FontWeight.w500),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow,),
                            Text(coffeeitem.rate.toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),

                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(coffeeitem.reviews.toString() + " reviews", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w700),),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(coffeeitem.address, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 25),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              options("assets/icons/cup.png", "Coffee"),
                              options("assets/icons/milk-bottle.png", "Milk"),
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: Center(
                          child: FloatingActionButton.extended(
                            heroTag: "order",
                            isExtended: true,
                            backgroundColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            label: const Padding(
                              padding:  EdgeInsets.only(left: 100, right: 100, top: 50, bottom: 50),
                              child: Text("Order Now", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),),
                            ),
                            onPressed: (){

                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 19, left: 16, right: 25, bottom: 25),
                child: FloatingActionButton(
                  heroTag: "back",
                  mini: true,
                  backgroundColor: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20,),
                  onPressed: (){
                    Navigator.pop(context);
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

InkWell options(String img, String name)
{
  return InkWell(
    child: Container(
      decoration:  BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      height: 110, width: 95,
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(img, color: Colors.lime[900], height: 75, width: 50,),
          Text(name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),)
        ],
      ),),
    ),
    onTap: (){

    },
  );
}