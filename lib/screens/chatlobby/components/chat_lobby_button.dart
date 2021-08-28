import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatLobbyButton extends StatelessWidget {
  ChatLobbyButton({this.text,this.onClick, this.btnClr});

  final String text;
  final int btnClr;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      height: height * 0.04,
      // minWidth:  width * 0.2,
      color: Color(btnClr),
      onPressed: onClick,
      child: Text(text ,style: TextStyle(color: Colors.white,fontSize: 15),),
    );
  }
}