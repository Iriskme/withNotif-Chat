import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NewSMS02 extends StatefulWidget {
  bool _showBottom = false;
  @override
  NewSMS02State createState() => NewSMS02State();
}

class NewSMS02State extends State<NewSMS02> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffaeb99c),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 30),
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/avatarsample.jpg')))),
                  Container(
                      margin: EdgeInsets.only(left: 10, top: 45),
                      width: 200,
                      child: Text(
                        'Maria Dela Cruz',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                            fontSize: 20),
                      )),
                ]),
            Row(
  children: [
    //https://cybdom.tech/flutter-tutorial-messengerish-app-ui/
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("",
          //"${messages[i]['contactName']}",
          style: Theme.of(context).textTheme.caption,
        ),
        Container(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .6),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color(0xfff9f9f9),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Text("",
            // "${messages[i]['message']}",
           //style: Theme.of(context).textTheme.body1.apply(color: Colors.black87,
                 ),
          ),
      ],
    ),
    SizedBox(width: 15),
    Text("",
      //"${messages[i]['time']}",
      //style: Theme.of(context).textTheme.body2.apply(color: Colors.grey),
    ),
  ],
),   
            //
            Container(
              margin: EdgeInsets.all(15.0),
              height: 61,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              color: Colors.grey)
                        ],
                      ),
                      
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.face), onPressed: () {}),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Type Something...",
                                  border: InputBorder.none),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.photo_camera),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.attach_file),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                    child: InkWell(
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
            //  Padding(padding: padding)
          ]),
        ));
  }
}
