import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Notifs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Stack(children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "NOTIFICATIONS",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(bottom:430.0,right: 20),
                      child: InkWell(
                      onTap: () {
                        //Navigator.push(
                          //  context,
                            //MaterialPageRoute(
                                //builder: (context) => ()));
                      },
                        child: Text(
                          "Mark all as read",
                          style: TextStyle(
                              color: Color(0xffe9c68b),
                              fontWeight: FontWeight.w600,
                              fontSize: 10
                              //fontFamily:
                              ),
                        ),
                        )),
              
                  Container(
                    margin: EdgeInsets.only(top:40),
                    child: AnimationLimiter(
              child: ListView.builder(
                padding: EdgeInsets.all(_w / 70),
                physics:
                    BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    delay: Duration(milliseconds: 100),
                    child: SlideAnimation(
                      duration: Duration(milliseconds: 2500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: FadeInAnimation(
                        curve: Curves.fastLinearToSlowEaseIn,
                        duration: Duration(milliseconds: 2500),
                        child: Container(
                          margin: EdgeInsets.only(bottom: _w / 50),
                          height: _w / 4,
                          decoration: BoxDecoration(
                            color: Color(0xffaeb99c),
                       //     borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 40,
                                spreadRadius: 10,
                              ),
                            ],
                          ),
                          child: Row(
                                  children: <Widget>[
                                    //sender avatar
                                    Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width: 50.0,
                                        height: 50.0,
                                        child: Icon(Icons.calendar_today, color: Colors.white70, size: 50,)),
                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          //sender name
                                          Container(
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(left: 3.0),
                                            child: Text('Your booking is confirmed',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
                                            )),
                                          //Text message
                                          Container(
                                            margin: EdgeInsets.only(left:5,top:5.0),
                                            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eget dui aliquam.',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white70,
                                            fontSize: 10.0),
                                            )
                                          )
                                        ],
                                      ),
                                      margin: EdgeInsets.all(10.0),
                                      width: 180,
                                      
                                    ),
                                    //Time
                                    Container(
                                      margin: EdgeInsets.only(top:10.0,left: 6.0),
                                      alignment: Alignment.topRight,
                                      child: Text('1hr ago',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white70,
                                      fontSize: 9.0)),
                                    )
                                  ],
                                )
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
    )])));
  }
}