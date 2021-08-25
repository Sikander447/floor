import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtomCircleButton extends StatelessWidget {
  final String text;
  final Color color;



  ButtomCircleButton({@ required this.color,this.text});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return CircleAvatar(
      radius: 35,
      child: Center(
        child: RegularText(
         text: text,
          color: AppColors.KwhiteColor,
          size: 12,
        ),
      ),
      backgroundColor:color,
    );
  }
}
