import 'package:floor/constants/constants.dart';
import 'package:floor/screens/allofficehours/all_office_hours.dart';
import 'package:floor/screens/intro/components/intro_checkmark_cards.dart';
import 'package:floor/screens/meetsmenu/components/attendees_bottom_cards.dart';
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
                      height: height * 0.04,
                      minWidth:  width * 0.4,
                      color: AppColors.KgreenColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      onPressed: () {
                        Navigator.pushNamed(context, AllOfficeHoursScreen.routeName);
                      },
                      child: Text('RSVP' ,style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                    MaterialButton(
                      height: height * 0.04,
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
                  height: height * 0.007,
                ),
                SizedBox(
                  width: width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RegularText(
                        text: 'When: ',
                        size: 17,
                        fontWeight: FontWeight.w600,
                      ),
                      RegularText(
                        text: 'wed 19 @ 4:00 PM',
                        textOverFlow: TextOverflow.ellipsis,
                        maximumLine: 1,
                        size: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      RegularText(
                        text: 'When: ',
                        size: 17,
                        fontWeight: FontWeight.w600,
                      ),
                      Flexible(
                        child: RegularText(
                          text: '3055 29th street Boulder,\n CO',
                          textOverFlow: TextOverflow.ellipsis,
                          maximumLine: 1,
                          size: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                RegularText(
                  text: 'Topics ',
                  size: 17,
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  height: height * 0.12,
                  width: width * 1,
                  // color: Colors.black,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                      itemBuilder: (context, int index){
                        return  Padding(
                          padding: const EdgeInsets.only(
                            left: 5.0,right: 3.0,top: 5.0
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width * .45,
                            // height: MediaQuery.of(context).size.height * 0.13,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: AppColors.KlightgrayColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/icons/recurit_icon.jpeg'),
                                    SizedBox(width: 7.0,),
                                    Text(
                                      'Discover',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                RegularText(
                                  text: 'Discover founders and investors outside your network ',
                                  textOverFlow: TextOverflow.ellipsis,
                                  maximumLine: 2,
                                  size: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                RegularText(
                  text: 'Niches Invited',
                  size: 17,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: height * 0.007,
                ),
                Container(
                  height: height * 0.17,
                  width: width * 1,
                  // color: Colors.grey,
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount:3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    childAspectRatio: 4/2,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(
                      5,
                          (index) => Row(
                        children: [
                          SizedBox(
                            height: height * 0.8,
                            width: width * 0.3,
                            child: Card(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('assets/icons/recurit_icon.jpeg'),
                                    Text(
                                      ' investing',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                RegularText(
                  text: 'Attendees',
                  size: 17,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: height * 0.007,
                ),
                AttendeesBottomCard(),
                AttendeesBottomCard(),
                AttendeesBottomCard(),
                AttendeesBottomCard(),
                AttendeesBottomCard(),

              ],
            ),
          ),
        ),
      ),
      // backgroundColor: AppColors.KappBackgroundColor
    );
  }
}
