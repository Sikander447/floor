
import 'package:floor/constants/constants.dart';
import 'package:floor/screens/meetsvirtual/components/bottom_circle_btn.dart';
import 'package:floor/screens/meetsvirtual/components/text_and_icon_container.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetsVirtualScreen extends StatefulWidget {
  static String routeName = "/meets_virtual";
  @override
  _MeetsVirtualScreenState createState() => _MeetsVirtualScreenState();
}
class _MeetsVirtualScreenState extends State<MeetsVirtualScreen> {

  int counter = 1;
  bool status = false;

  var currentP;
  void increment() {
    if (counter >= 15) {
    } else {
      setState(() {
        counter++;
      });
    }
  }

  void decrement() {
    if (counter <= 1) {
    } else {
      setState(() {
        counter--;

      });
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      counter;
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.KappBackgroundColor,
        bottomNavigationBar: bottomNavigationItem(),
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

                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        height: height * 0.06,
                        child: TextField(
                          controller: null,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                // color: Colors.pink[100],
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                // color: Colors.pink[100],
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            // contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                            hintText: 'What do you want to talk about ?',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02,
                      ),
                      RegularText(
                        text: 'Choose Topics',
                        textOverFlow: TextOverflow.ellipsis,
                        maximumLine: 1,
                        size: 17,
                        fontWeight: FontWeight.w600,
                      ),

                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                          height: height * 0.11,
                          width: width * 1,
                          // color: Colors.black,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, int index){
                                return  Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0.0,right: 7.0,top: 5.0
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
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.007,
                                        ),
                                        RegularText(
                                          text: 'Discover founders and investors outside your network ',
                                          textOverFlow: TextOverflow.ellipsis,
                                          maximumLine: 2,
                                          size: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })
                      ),


                      SizedBox(height: height * 0.02,
                      ),
                      RegularText(
                        text: 'Duration',
                        textOverFlow: TextOverflow.ellipsis,
                        maximumLine: 1,
                        size: 17,
                        fontWeight: FontWeight.w600,
                      ),

                      SizedBox(
                        height: height * 0.01,
                      ),

                      Container(
                        width: width * 1,
                        height: height * 0.1,
                        decoration: BoxDecoration(
                          color: AppColors.KlightgrayColor,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,),
                                  child: RegularText(
                                    text: 'Hours',
                                    textOverFlow: TextOverflow.ellipsis,
                                    maximumLine: 1,
                                    size: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,),                                  child: Container(
                                    width: width * .3,
                                    height: height * .035,
                                    decoration: BoxDecoration(
                                        color: AppColors.KgrayColor,
                                        borderRadius:
                                        BorderRadius.circular(12),
                                        border:
                                        Border.all(color: AppColors.KappBackgroundColor, width: 0.5)),
                                    padding: EdgeInsets.only(left: 2, right: 2),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                decrement();
                                              },
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                size: 25,
                                              ),
                                            ),
                                            Container(
                                              width: width * 0.1,
                                              height: height * 0.033,
                                              color: AppColors.KwhiteColor,
                                              child: Center(
                                                child: Text(
                                                  "$counter",
                                                  style: TextStyle(
                                                      color: AppColors.KblackColor,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                increment();
                                              },
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,),
                                  child: RegularText(
                                    text: 'Miuntes',
                                    textOverFlow: TextOverflow.ellipsis,
                                    maximumLine: 1,
                                    size: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,top: 5.0),                                  child: Container(
                                  width: width * .3,
                                  height: height * .035,
                                  decoration: BoxDecoration(
                                      color: AppColors.KgrayColor,
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      border:
                                      Border.all(color: AppColors.KappBackgroundColor, width: 0.5)),
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              decrement();
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            ),
                                          ),
                                          Container(
                                            width: width * 0.1,
                                            height: height * 0.033,
                                            color: AppColors.KwhiteColor,
                                            child: Center(
                                              child: Text(
                                                "$counter",
                                                style: TextStyle(
                                                    color: AppColors.KblackColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              increment();
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.02,
                      ),
                      RegularText(
                        text: 'Meet Setting',
                        textOverFlow: TextOverflow.ellipsis,
                        maximumLine: 1,
                        size: 17,
                        fontWeight: FontWeight.w600,
                      ),

                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        width: width * 1,
                        height: height * 0.12,
                        color: AppColors.KwhiteColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: width * 0.25,
                              height: height * 0.12,
                              decoration: BoxDecoration(
                                  color: AppColors.Kblack54,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset('assets/icons/voice_search.jpg',
                                  height: height * 0.05,
                                    width: width * 0.2,
                                  ),
                                  RegularText(
                                    text: 'virtual',
                                    textOverFlow: TextOverflow.ellipsis,
                                    maximumLine: 1,
                                    size: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width * 0.25,
                              height: height * 0.12,
                              decoration: BoxDecoration(
                                  color: AppColors.KlightgrayColor,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset('assets/icons/standin_up_man.png',
                                    height: height * 0.05,
                                    width: width * 0.2,
                                  ),
                                  RegularText(
                                    text: 'In Person',
                                    textOverFlow: TextOverflow.ellipsis,
                                    maximumLine: 1,
                                    size: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      TextIconContainer(
                        text: 'Invite Friends',

                      ),
                      TextIconContainer(
                        text: 'Invite Channel',
                      ),
                      TextIconContainer(
                        text: 'Invite Niches',
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0
                        ),
                        child: Container(
                          width: width * 1,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.KgrayColor),
                            color: AppColors.KtransparentColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RegularText(
                                  text: 'Only allow people invited',
                                  textOverFlow: TextOverflow.ellipsis,
                                  maximumLine: 1,
                                  color: AppColors.KgrayColor,
                                  size: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                                Switch(
                                  activeColor: Colors.pinkAccent,
                                  value: status,
                                  onChanged: (value) {
                                    print("VALUE : $value");
                                    setState(() {
                                      status = value;
                                    });
                                  },
                                )

                              ],
                            ),
                          ),

                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

    );
  }



  Widget bottomNavigationItem() {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * .09,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: (){},
            child:ButtomCircleButton(
              text: 'Today\n7:00pm',
              color: AppColors.KmeetVirtualSCBtnOneColor,
            ),
          ),

          InkWell(
            onTap: (){


            },
            child:ButtomCircleButton(
              text: 'Next Week',
              color: AppColors.KmeetVirtualSCBtnTwoColor,
            ),
          ),

          InkWell(
            onTap: (){


            },
            child:ButtomCircleButton(
              text: 'Schedule',
              color: AppColors.KmeetVirtualSCBtnThreeColor,
            ),
          ),




        ],
      ),
    );
  }

}
