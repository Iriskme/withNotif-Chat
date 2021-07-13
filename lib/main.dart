//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:akyat_bukid/screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final _init = Firebase.initializeApp();
    // return FutureBuilder(
    //     future: _init,
    //     builder: (context, snapshot) {
    //       if (snapshot.hasError) {
    //         return ErrorWidget();
    //       } else if (snapshot.hasData) {
    //         return HomePage();
    //       } else
    //         Loading();

    //   },
    // );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData());
  }
}

// class ErrorWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(c
//           children: [Icon(Icons.error), Text("Something went wrong !")],
//         ),
//       ),
//     );
//   }
// }

// class Loading extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }
