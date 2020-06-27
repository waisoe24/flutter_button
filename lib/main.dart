import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    Color color = Colors.blue;
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Flutter'),
        ),
        body: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildButton(color, Icons.phone, "CALL"),
            buildButton(color, Icons.navigation, "ROUTE"),
            buildButton(color, Icons.share, "SHARE"),
            Image.asset(
              'image/download.jpg',
              width: 100,
              height: 100,
            )
          ],
          ),
      ),
    
    );
  }
}

Column buildButton(Color color, IconData icon, String label){
  return Column(
    children: <Widget>[
Icon(icon, color: color,),
Text(
  label, style: TextStyle(
    color: color,
    fontSize: 12,
    fontWeight: FontWeight.w400
  ),
)

      // Icon(Icons.phone),
      // Text("Phone")

    ],
  );
}

// Column buildButton1(Color color, IconData icon, String label)){
//   return Column(
//     children: <Widget>[

//       Icon(Icons.navigation),
//       Text("Route")

//     ],
//   );
// }

// Column buildButton2(){
//   return Column(
//     children: <Widget>[
//       Icon(Icons.share),
//       Text("Share")

//     ],
//   );
// }
