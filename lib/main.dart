import 'package:floor/constants/routes.dart';
import 'package:floor/screens/allofficehours/all_office_hours.dart';
import 'package:floor/screens/chatinfo/chat_info.dart';
import 'package:floor/screens/emptyscreen.dart';
import 'package:floor/screens/frameone/frame_one.dart';
import 'package:floor/screens/frametwo/frame_two.dart';
import 'package:floor/screens/home/home.dart';
import 'package:floor/screens/intro/intro.dart';
import 'package:floor/screens/invitemembers/invite_members.dart';
import 'package:floor/screens/meetsmenu/meet_menu.dart';
import 'package:floor/screens/meetsvirtual/meets_virtual.dart';
import 'package:floor/screens/people/people_screen.dart';
import 'package:floor/screens/startchatprivate/start_chat_private.dart';
import 'package:floor/screens/userfilter/user_filter.dart';
import 'package:floor/screens/usersofficehours/users_office_hours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

// ALi hadar
void main() {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      // home: MyHomePage(),
      initialRoute: HomeScreen.routeName,
    );
  }


}

