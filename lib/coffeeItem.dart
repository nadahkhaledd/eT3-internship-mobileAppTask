import 'package:et3_task_mobileapp/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class coffeeItem extends StatelessWidget
{
  item coffeeitem;
  coffeeItem(context, this.coffeeitem);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Image.asset(coffeeitem.img, fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height*1/4, width: MediaQuery.of(context).size.width*1/1.6,),
            FloatingActionButton(
              backgroundColor: Colors.grey[400],
              mini: true,
              child: SvgPicture.asset("assets/icons/heart.svg", color: Colors.white,),
              onPressed: (){

              },
            )
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, top: 8),
          child: Text(coffeeitem.name, style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.star, color: Colors.yellow,),
              Text(coffeeitem.rate.toString(), style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),

              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(coffeeitem.reviews.toString() + " reviews", style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w600),),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: Text(coffeeitem.address, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
        )



      ],
    );
  }

}