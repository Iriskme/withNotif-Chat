import 'package:flutter/material.dart';
import 'package:akyat_bukid/screens/message/newmessage02.dart';



class NewSMS extends StatefulWidget{
  @override
  NewSMSState createState() => NewSMSState();
}

class NewSMSState extends State<NewSMS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Color(0xffaeb99c),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:10, top:37),
                alignment: Alignment.topLeft,
                child: Icon(Icons.search, color: Colors.black, size: 35,)),
              Container(
                margin: EdgeInsets.only(left:10, top:30),
                width: 200,
                child: TextField(
                decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)
                ),
              ),
                ]),
                Container(
                  width: 280,
                  height: 40,
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                      MaterialPageRoute(
                      builder: (context) => NewSMS02()));
                    },
                  child: Text('click here: as if select nag contact and proceed to create convo',
                  textAlign: TextAlign.center)),
                )
          ]),
          
    ));}}