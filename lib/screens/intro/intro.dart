import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/intro_top_card.dart';

class IntroScreen extends StatefulWidget {
  static String routeName = "/intro";
  @override
  _IntroScreenState createState() => _IntroScreenState();
}
class _IntroScreenState extends State<IntroScreen> {
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
          child: Text('Making an Intro for',style: TextStyle(color: Colors.black,fontSize: 17),),
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
                IntroTopCard(),




                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      RegularText(
                        // textOverFlow: TextOverflow.ellipsis,
                        text:  'Id like to introduce Sarah to:',
                        // maximumLine: 2,
                        size: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),

                    ],
                  ),
                ),
                Card(
                  elevation: 0.5,
                  color: AppColors.KlightgrayColor,
                  child: ListTile(
                    leading:  Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(color: AppColors.KredColor, width: 5),
                        ),
                        child: Image.asset('assets/images/man_image.png',
                          height: height * 0.09,
                          width: width * 0.13,
                        )),
                    title: RichText(
                      text: TextSpan(
                        text: 'Jasmin G.Rangle',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                        // children: <TextSpan>[
                        //   TextSpan(
                        //       text: " (She/Her)",
                        //       style: TextStyle(
                        //           color: Colors.blueAccent,
                        //           fontSize: 13)),
                        // ],
                      ),
                    ),
                    subtitle: RegularText(
                      textOverFlow: TextOverflow.ellipsis,
                      text:  '2x Founder, B2B Advisor',
                      maximumLine: 1,
                      size: 13,
                      color: AppColors.KgrayColor,
                    ),
                    trailing: CircleAvatar(

                      child: Icon(Icons.check,color: AppColors.KwhiteColor,),
                    ),
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
