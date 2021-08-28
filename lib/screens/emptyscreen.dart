//
// import 'package:floor/screens/home/home.dart';
// import 'package:flutter/material.dart';
// import 'package:focused_menu/focused_menu.dart';
// import 'package:focused_menu/modals.dart';
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
// backgroundColor: Colors.red,
//         body: Container(
//             child: Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 children: <Widget>[
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Text(
//                         "Music Albums",
//                         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                       ),
//                       Expanded(child: Center()),
//                       IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
//                       CircleAvatar(
//                         child: Image.asset("assets/images/man_image.png"),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(border: InputBorder.none, hintText: "Look for your Interest!", fillColor: Colors.grey.shade200, filled: true),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Expanded(
//                     child: GridView(
//                       physics: BouncingScrollPhysics(),
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//                       children: [1, 2, 3, 4, 5, 6,]
//                           .map((e) => FocusedMenuHolder(
//                         menuWidth: MediaQuery.of(context).size.width*0.50,
//                         blurSize: 5.0,
//                         menuItemExtent: 45,
//                         menuBoxDecoration: BoxDecoration(
//                             color: Colors.grey,
//                         borderRadius: BorderRadius.all(Radius.circular(15.0))),
//                         duration: Duration(milliseconds: 100),
//                         animateMenuItems: true,
//                         blurBackgroundColor: Colors.black54,
//                         bottomOffsetHeight: 100,
//                         openWithTap: true,
//                         menuItems: <FocusedMenuItem>[
//                           FocusedMenuItem(title: Text("Share"),trailingIcon: Icon(Icons.share) ,onPressed: (){}),
//                           FocusedMenuItem(title: Text("Invite Friends "),
//                               trailingIcon: Icon(Icons.person_add_alt),
//                               onPressed: (){}),
//                         ],
//                         onPressed: (){},
//                         child: Card(
//                           child: Column(
//                             children: <Widget>[
//                               Image.asset("assets/images/man_image.png"),
//                             ],
//                           ),
//                         ),
//                       ))
//                           .toList(),
//                     ),
//                   ),
//                 ],
//               ),
//             )),
//         bottomNavigationBar: BottomNavigationBar(
//             backgroundColor: Colors.red,
//
//             items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.add),label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.add),label: "Menu 2"),
//           BottomNavigationBarItem(icon: Icon(Icons.add),label: "Menu 3"),
//           BottomNavigationBarItem(icon: Icon(Icons.add),label: "Menu 4"),
//           BottomNavigationBarItem(icon: Icon(Icons.add),label: "Menu 5"),
//         ]),
//       ),
//     );
//   }
// }