import 'package:flutter/material.dart';
class ReusableWidget extends StatelessWidget{

  final String item;
  //final String img;
  //ReusableWidget({this.item,this.img});
  ReusableWidget({this.item});

  @override
  Widget build(BuildContext context) {
   return Container(
     height: 217,
     width: 150,
     child: Stack(
       children: [
         Container(
           decoration: BoxDecoration(
             color: Colors.grey,

             borderRadius: BorderRadius.all(Radius.circular(18)),
           ),
          // child:          Image.network(img)

         ),
         Container(
           height: 66,
           width: 167,
           margin: EdgeInsets.fromLTRB(0, 151, 0, 0),
           decoration: BoxDecoration(
             color: Color(0xffF9F9F9),
             borderRadius: BorderRadius.all(Radius.circular(18)),

           ),
           child: Center(
             child: Text(
               item,
               style: TextStyle(
                 fontFamily: 'Gilroy',
                 fontStyle: FontStyle.normal,
                 fontWeight: FontWeight.w500,
                 fontSize: 18,

               ),
             ),
           ),
         ),
       ],

     ),
   );
  }

}
