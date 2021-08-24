import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetsVirtualScreen extends StatefulWidget {
  static String routeName = "/meets_virtual";
  @override
  _MeetsVirtualScreenState createState() => _MeetsVirtualScreenState();
}
class _MeetsVirtualScreenState extends State<MeetsVirtualScreen> {
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
          child: Container(
            height: height * 1,
            width: width * 1,
            child:   SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.005,
                    ),
                    RegularText(
                      text: 'Title',
                      textOverFlow: TextOverflow.ellipsis,
                      maximumLine: 1,
                      size: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }
}
