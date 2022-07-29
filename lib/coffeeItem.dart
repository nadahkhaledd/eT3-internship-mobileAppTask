import 'package:et3_task_mobileapp/item.dart';
import 'package:et3_task_mobileapp/itemPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class coffeeItem extends StatefulWidget
{
  item coffeeitem;
  coffeeItem(context, this.coffeeitem);

  @override
  State<coffeeItem> createState() => _coffeeItemState();
}

class _coffeeItemState extends State<coffeeItem> {
  @override
  Widget build(BuildContext context) {
    Color iconColor = widget.coffeeitem.ifFav? Colors.orangeAccent: Colors.black;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            InkWell(
              child: Image.asset(widget.coffeeitem.img, fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height*1/4, width: MediaQuery.of(context).size.width*1/1.8,),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => itemPage(widget.coffeeitem)),
                );
              },
            ),

            RawMaterialButton(
              onPressed: () {
                if(widget.coffeeitem.ifFav)
                  {
                    setState(() {
                      widget.coffeeitem.ifFav = false;
                      iconColor = Colors.black;
                    });
                  }
                else
                  {
                    setState(() {
                      widget.coffeeitem.ifFav = true;
                      iconColor = Colors.orangeAccent;
                    });
                  }
              },
              elevation: 2.0,
              fillColor: Colors.grey[350],
              child: SvgPicture.asset("assets/icons/heart.svg", color: iconColor, height: 20, width: 20,),
              padding: EdgeInsets.all(9),
              shape: CircleBorder(),
            )

          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, top: 8),
          child: Text(widget.coffeeitem.name, style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.star, color: Colors.yellow,),
              Text(widget.coffeeitem.rate.toString(), style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),

              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(widget.coffeeitem.reviews.toString() + " reviews", style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w600),),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: Text(widget.coffeeitem.address, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
        )



      ],
    );
  }
}