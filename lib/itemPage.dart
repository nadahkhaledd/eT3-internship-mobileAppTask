import 'package:et3_task_mobileapp/item.dart';
import 'package:flutter/material.dart';

class itemPage extends StatelessWidget
{
  item coffeeitem;
  itemPage(this.coffeeitem);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(coffeeitem.img, height: MediaQuery.of(context).size.height*2/3,
             fit: BoxFit.cover),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height*1/2,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),
            ),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 19, left: 16, right: 25, bottom: 25),
              child: FloatingActionButton(
                mini: true,
                backgroundColor: Colors.orangeAccent,
                shape: BeveledRectangleBorder(),
                child: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20,),
                onPressed: (){

                },
              ),
            ),
          ),
        ],
      ),
    );
  }

}