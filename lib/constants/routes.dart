
// We use name route
// All our routes will be available here
import 'package:floor/screens/allofficehours/all_office_hours.dart';
import 'package:floor/screens/channellobby/channel_lobby.dart';
import 'package:floor/screens/chatinfo/chat_info.dart';
import 'package:floor/screens/chatlobby/chat_lobby.dart';
import 'package:floor/screens/chatmenu/chat_menu.dart';
import 'package:floor/screens/createchannel/create_channel.dart';
import 'package:floor/screens/frameone/frame_one.dart';
import 'package:floor/screens/frametwo/frame_two.dart';
import 'package:floor/screens/home/home.dart';
import 'package:floor/screens/intro/intro.dart';
import 'package:floor/screens/invitemembers/invite_members.dart';
import 'package:floor/screens/meetsmenu/meet_menu.dart';
import 'package:floor/screens/meetsvirtual/meets_virtual.dart';
import 'package:floor/screens/people/people_screen.dart';
import 'package:floor/screens/reportlobby/report_lobby.dart';
import 'package:floor/screens/startchatprivate/start_chat_private.dart';
import 'package:floor/screens/startchatpublic/strat_chat_public.dart';
import 'package:floor/screens/startprivatelobby/start_private_lobby.dart';
import 'package:floor/screens/userfilter/user_filter.dart';
import 'package:floor/screens/usersofficehours/users_office_hours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  ChatLobbyScreen.routeName: (context) => ChatLobbyScreen(),
  CreateChannelScreen.routeName: (context) => CreateChannelScreen(),
  StartChatPublicScreen.routeName: (context) => StartChatPublicScreen(),
  FrameOneScreen.routeName: (context) => FrameOneScreen(),
  StartChatPrivateScreen.routeName: (context) => StartChatPrivateScreen(),
  UsersOfficeHoursScreen.routeName: (context) => UsersOfficeHoursScreen(),
  ChatMenuScreen.routeName: (context) => ChatMenuScreen(),
  PeopleScreen.routeName: (context) => PeopleScreen(),
  StartPrivateLobbyScreen.routeName: (context) => StartPrivateLobbyScreen(),
  ChatInfoScreen.routeName: (context) => ChatInfoScreen(),
  ChannelLobbyScreen.routeName: (context) => ChannelLobbyScreen(),
  ReportLobbyScreen.routeName: (context) => ReportLobbyScreen(),
  UserFilterScreen.routeName: (context) => UserFilterScreen(),
  FrameTwoScreen.routeName: (context) => FrameTwoScreen(),
  IntroScreen.routeName: (context) => IntroScreen(),
  MeetsMenuScreen.routeName: (context) => MeetsMenuScreen(),
  AllOfficeHoursScreen.routeName: (context) => AllOfficeHoursScreen(),
  MeetsVirtualScreen.routeName: (context) => MeetsVirtualScreen(),
  InviteMembersScreen.routeName: (context) => InviteMembersScreen(),

};