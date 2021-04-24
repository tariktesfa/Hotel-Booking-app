import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotelbooking/models/hotel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hi Selam',
                      style: TextStyle(
                        fontSize: 18.0,
                        color:Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Find Hotels Here',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage('images/selam.jpg'),
                        fit: BoxFit.cover
                    ),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0.0,4.0),
                        blurRadius: 10.0
                      )
                    ]
                  ),
                )
              ],
            ),
          ),

          //Search Hotels
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEFEDEE),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0,10.0),
                    blurRadius: 10.0
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width*0.7,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search For Hotel',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Colors.grey.withOpacity(0.8)
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //Popular Hotels
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
                'Popular Hotels',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0
                   ),
              ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 220,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (BuildContext context, index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 18.0),
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0,4.0),
                          blurRadius: 10.0
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 140.0,
                          width: 170.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)
                            ),
                            image: DecorationImage(image: AssetImage(hotels[index].imageUrl),fit: BoxFit.cover)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,left: 10.0),
                          child: Text(
                            hotels[index].title,
                            style: TextStyle(
                              fontSize: 16.0
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            hotels[index].description,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 5.0,right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '\$${hotels[index].price}/ night',
                                style: TextStyle(
                                  color: Colors.blue
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '${hotels[index].rating}',
                                    style: TextStyle(
                                      color: Colors.blue
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                    size: 16.0,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Nearby Hotels',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Column(
            children: <Widget>[
              _nearbyHotel(0),
              SizedBox(height: 10),
              _nearbyHotel(1),
              SizedBox(height: 10),
              _nearbyHotel(2),
              SizedBox(height: 10),
              _nearbyHotel(3)
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color(0xFFFE8C68),
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title:Text('Home')
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.favorite),
              title:Text('Favorite')
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.circle_notifications),
              title:Text('Notification')
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.account_circle),
              title:Text('Account'),
          ),
        ],
      ),
    );
  }
}

_nearbyHotel(int index){
 return Padding(
   padding: const EdgeInsets.symmetric(horizontal: 20.0),
   child: Container(
     height: 130,
     width: double.infinity,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10.0),
       color: Colors.white,
       boxShadow: [
         BoxShadow(
           color: Colors.black12,
           offset: Offset(0.0,0.4),
           blurRadius: 0.6
         )
       ]
     ),
     child: Stack(
       children: <Widget>[
         Positioned(
             child: Container(
               height: 130,
               width: 100,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(10.0),
                   bottomLeft: Radius.circular(10.0)
                 ),
                 image: DecorationImage(
                   image: AssetImage(hotels[index].imageUrl),
                   fit: BoxFit.cover
                 )
               ),
             )
         ),
         Positioned(
           top: 15,
           left: 110,
           width: 140,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
                Text(
                  hotels[index].title,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
               SizedBox(
                 height: 5,
               ),
               Text(
                 hotels[index].description,
                 style: TextStyle(
                   fontSize: 12.0,
                   color: Colors.grey
                 ),
               ),
               SizedBox(height: 5),
               Text(
                 '\$${hotels[index].price}/ night',
                 style: TextStyle(
                   fontSize: 12.0,
                   color: Colors.blue
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 10.0),
                 child: Row(
                   children: <Widget>[
                     Icon(
                       Icons.directions_car,
                       color: Colors.blue,
                     ),
                     SizedBox(
                       width: 10.0
                     ),
                     Icon(
                       Icons.hot_tub,
                       color: Colors.blue,
                     ),
                     SizedBox(
                         width: 10.0
                     ),
                     Icon(
                       Icons.local_bar,
                       color: Colors.blue,
                     ),
                     SizedBox(
                         width: 10.0
                     ),
                     Icon(
                       Icons.wifi,
                       color: Colors.blue,
                     ),


                   ],
                 ),
               )
             ],
           ),
         ),
         Positioned(
           bottom: 40,
           left: 210,
           child: Center(
             child: Transform.rotate(
               angle: pi/-2,
               child: Container(
                 height: 50,
                 width: 120,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                   color: Colors.blue,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black26,
                       blurRadius: 15.0,
                       offset: Offset(2.0,4.4)
                     )
                   ]
                 ),
                 child: Center(
                   child: Text('Booking Now',style: TextStyle(
                     fontSize: 14.0,
                     color: Colors.white,
                     fontWeight: FontWeight.w600,
                     letterSpacing: .2
                   ),),
                 ),

               ),
             ),
           ),
         )
       ],
     ),
   ),
 );
}