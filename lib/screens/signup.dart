import 'package:flutter/material.dart';
import 'package:akyat_bukid/screens/navbar.dart';


class SignupPage extends StatefulWidget{
  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {

  bool checkBoxValue = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Image(
          image: AssetImage('assets/images/Logo2.png'),
          width: 100.0,
          height: 100.0,
        ),
        centerTitle: true,
      ),

      backgroundColor: Color.fromRGBO(69, 95, 70, 1.0),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 50.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  )
                ),

                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 3) ,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),           
                ),
  
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    filled: true,
                    fillColor: Color(0xFFe7edeb),
                    hintText: "Email Address", 
                  ),
                ),

                SizedBox(height: 8.0),

                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 3) ,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),

                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    filled: true,
                    fillColor: Color(0xFFe7edeb),
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),

                SizedBox(height: 8.0),

                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 3) ,
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Color(0xFFe7edeb),
                            hintText: "First Name",
                          ),
                        ),
                      ),
                      
                      SizedBox(width: 5.0),

                      Flexible(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Color(0xFFe7edeb),
                            hintText: "Last Name",
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 8.0),

                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 3) ,
                  child: Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    filled: true,
                    fillColor: Color(0xFFe7edeb),
                    hintText: "Brgy/City/Province",
                  )
                ),

                SizedBox(height: 8.0),

                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 3) ,
                  child: Text(
                    'Contact Number',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),

                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    filled: true,
                    fillColor: Color(0xFFe7edeb),
                    hintText: "Contact Number",
                  )
                ),

                SizedBox(height: 8.0),

                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 3) ,
                  child: Text(
                    'Birthday',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Color(0xFFe7edeb),
                            hintText: "MM",
                          ),
                        ),
                      ),
                      
                      SizedBox(width: 5.0),

                      Flexible(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Color(0xFFe7edeb),
                            hintText: "DD",
                          ),
                        ),
                      ),

                      SizedBox(width: 5.0),

                      Flexible(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Color(0xFFe7edeb),
                            hintText: "YY",
                          ),
                        ),
                      )

                    ],
                  ),
                ),

                SizedBox(
                  height: 20.0
                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.5, color: Colors.black38)
                    )
                  ),
                ),

                SizedBox(
                  height: 20.0
                ),

                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 3) ,
                  child: Text(
                    'What are you? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [    
                      Row(
                        children: [
                          Radio(value: null, groupValue: null, onChanged: null,),
                          Text ('Hiker')
                        ]
                      ),
                      SizedBox(width: 15.0),
                      Row(
                        children: [
                          Radio(value: null, groupValue: null, onChanged: null,),
                          Text ('Guide')
                        ]
                      ),
                    ]
                  )
                ),

                SizedBox(height: 30.0),

                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0) ,
                  child: Text(
                    'By tapping "Signup" you agree to our Terms & Policies',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  )
                ),

                SizedBox(height: 30.0),

                ElevatedButton(
                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavPage()));
                     },
                    child: Text('SIGNUP'),
                    style: ElevatedButton.styleFrom( 
                    primary: Colors.orange[400],
                    onPrimary: Colors.black,
                    padding: const EdgeInsets.fromLTRB(57, 10, 57, 10),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    textStyle: TextStyle(
                      fontSize: 23,
                    )
                  ),
                ),
        
              ]  
            )
          )
        )
      )
    );
  }
}