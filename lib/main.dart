import 'package:flutter/material.dart';
import 'package:galleryanalytics/reusable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return AnalyticsGallery();
  }
}



class AnalyticsGallery extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Builder(
      builder: (context)=>Scaffold(

        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Color(0xffF6F6F6),
          child: Column(
            children: [
              Container(
                height: 75,
                width:356 ,
                margin: EdgeInsets.fromLTRB(28,98,30, 0),
                padding: EdgeInsets.fromLTRB(0, 20,0, 0),
                child: Text(
                  ' Image Gallery',

                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,

                  ),

                ),
              ),
              Container(
                width: 356,
                height: 46,
                margin: EdgeInsets.fromLTRB(30, 0, 30,0),
                child: TextField(


                  style: TextStyle(
                      color: Color(0xff5D5D5D),

                      fontSize:16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontFamily:'Gilroy'),

                  keyboardType: TextInputType.text,

                  decoration:
                  InputDecoration(
                    suffixIcon: Icon(Icons.cancel),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                    hintText: 'Search Dishes',


                  ),

                ),
              ),

              Container(
                height: 75,
                width:354 ,
                margin: EdgeInsets.fromLTRB(28,1,32, 0),
                padding: EdgeInsets.fromLTRB(0, 20,0, 0),
                child: Text(
                  'Fan Favourites',

                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 24,
                    color: Color(0xff000000),

                  ),

                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(30, 18, 30, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                          child: ReusableWidget(
                            //img:'https://img.pngio.com/filecheckerboard-patternsvg-wikimedia-commons-checker-png-1024_1024.png',
                            item: 'Chole Kulche',
                          ),
                        ),

                        Container(
                          child: ReusableWidget(
                            //img:'https://img.pngio.com/filecheckerboard-patternsvg-wikimedia-commons-checker-png-1024_1024.png',
                            item: 'Shahi Paneer',
                          ),
                        ),

                      ],
                    ),
                    Container(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                          child: ReusableWidget(
                            //img:'https://img.pngio.com/filecheckerboard-patternsvg-wikimedia-commons-checker-png-1024_1024.png',
                            item: 'Aalu Parantha',
                          ),
                        ),

                        Container(
                          child: ReusableWidget(
                            //img:'https://img.pngio.com/filecheckerboard-patternsvg-wikimedia-commons-checker-png-1024_1024.png',
                            item: 'Noodles',
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    ),
      ),
    );
  }
}