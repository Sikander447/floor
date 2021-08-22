import 'package:floor/constants/constants.dart';
import 'package:floor/screens/intro/components/intro_checkmark_cards.dart';
import 'package:floor/screens/meetsmenu/components/meets_menu_top_cards.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MeetsMenuScreen extends StatefulWidget {
  static String routeName = "/meets_menu";
  @override
  _MeetsMenuScreenState createState() => _MeetsMenuScreenState();
}
class _MeetsMenuScreenState extends State<MeetsMenuScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.KwhiteColor,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Center(child: Text('Meet with Ryan and friends',
            style: TextStyle(color: Colors.black,fontSize: 17),
           ),
          ),
        ),
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 23,
            ),
          ),
        ],
      ),



      body: Container(
        height: height * 1,
        width: width * 1,
        color: AppColors.KwhiteColor,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MeetsMenuTopCard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      height: height * 0.045,
                      minWidth:  width * 0.4,
                      color: AppColors.KgreenColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),

                      onPressed: () {},
                      child: Text('RSVP' ,style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),

                    MaterialButton(
                      height: height * 0.045,
                      minWidth:  width * 0.4,
                      color: AppColors.KblueColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),

                      onPressed: () {
                        // Navigator.pushNamed(context, IntroScreen.routeName);
                      },
                      child: Text('Share' ,style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                  ],
                ),

                SizedBox(
                  height: height * 0.01,
                ),
                SizedBox(
                  width: width * 1,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          RegularText(
                            text: 'When: ',
                            size: 17,
                            fontWeight: FontWeight.w600,
                          ),
                          RegularText(
                            text: 'wed 19 @ 4:00 PM',
                            textOverFlow: TextOverflow.ellipsis,
                            size: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Row(
                        children: [
                          RegularText(
                            text: 'When: ',
                            size: 17,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(
                            child: RegularText(
                              text: 'wed 19 @ 4:00 PM',
                              textOverFlow: TextOverflow.ellipsis,
                              size: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
      // backgroundColor: AppColors.KappBackgroundColor
    );
  }
}
