import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IntroCheckMarkCard extends StatelessWidget {
  final Color checkMarkIcon;
  IntroCheckMarkCard({this.checkMarkIcon});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return   Card(
      elevation: 0.5,
      color: AppColors.KwhiteColor,
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
          backgroundColor: checkMarkIcon,
          child: Icon(Icons.check,color: AppColors.KwhiteColor,),
        ),
      ),
    );
  }
}
