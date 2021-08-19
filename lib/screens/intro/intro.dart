import 'package:floor/constants/constants.dart';
import 'package:floor/screens/intro/components/intro_checkmark_cards.dart';
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
  OverlayEntry entry;

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
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: AppColors.KappGradientColorOne,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            TextButton(
              child: Text(''),
              onPressed: () {},
            )
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: AppColors.KtransparentColor,
        child: FloatingActionButton(
          elevation: 6.0,
          backgroundColor: AppColors.KintroSCFlottingActionBtnColor,
          child: const Icon(Icons.add),
          onPressed: () {
            Overlay.of(context).insert(entry);
          },
        ),
      ),

      body: Container(
        height: height * 1,
        width: width * 1,
        color: AppColors.KintrolSCBackGroundColor,
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
                IntroCheckMarkCard(
                    checkMarkIcon: AppColors.KblackColor
                ),
                IntroCheckMarkCard(
                    checkMarkIcon: AppColors.KblueColor
                ),
                IntroCheckMarkCard(  checkMarkIcon: AppColors.KblackColor),
                IntroCheckMarkCard(
                    checkMarkIcon: AppColors.KblueColor
                ),
                IntroCheckMarkCard(  checkMarkIcon: AppColors.KblackColor),

                IntroCheckMarkCard(  checkMarkIcon: AppColors.KblackColor),

                IntroCheckMarkCard(  checkMarkIcon: AppColors.KblackColor),



              ],
            ),
          ),
        ),
      ),
      // backgroundColor: AppColors.KappBackgroundColor
    );
  }
}
