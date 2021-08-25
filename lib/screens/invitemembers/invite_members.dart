
import 'package:floor/constants/constants.dart';
import 'package:floor/screens/meetsvirtual/components/bottom_circle_btn.dart';
import 'package:floor/screens/meetsvirtual/components/text_and_icon_container.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InviteMembersScreen extends StatefulWidget {
  static String routeName = "/invite_members";
  @override
  _InviteMembersScreenState createState() => _InviteMembersScreenState();
}
class _InviteMembersScreenState extends State<InviteMembersScreen> {



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.KappBackgroundColor,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.KwhiteColor,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        title: Center(
          child: Text(
            'Meets',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        titleSpacing: 0,
        actions: [
          Icon(
            Icons.add_circle_outline_outlined,
            color: Colors.black,
            size: 22,
          ),
          Icon(
            Icons.more_vert,
            color: AppColors.KgrayColor,
            size: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 22,
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            height: height * 1,
            width: width * 1,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                )
              ),
            ),
          ),
        ),
      ),

    );
  }





}
