import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextIconContainer extends StatelessWidget {
  final String text;

  final Widget next;

  TextIconContainer({@ required this.next,this.text});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
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
                text: text,
                textOverFlow: TextOverflow.ellipsis,
                maximumLine: 1,
                size: 13,
                fontWeight: FontWeight.normal,
              ),
              Icon(
                // next,
                Icons.arrow_forward_ios_rounded,
                size: 10,
              ),
            ],
          ),
        ),

      ),
    );
  }
}
