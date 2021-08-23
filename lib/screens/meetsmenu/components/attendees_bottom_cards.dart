import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AttendeesBottomCard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Container(
      width: width * 0.95,
      padding: EdgeInsets.only(left: 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
        ),
        title: Text(
          'Jasmin G. Rangle',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          '2x Founder, B2B Advisor',
          style: TextStyle(
            color: Colors.pink[200],
            fontSize: 9,
          ),
        ),
        trailing: Container(
          height: height * 0.045,
          width: width * 0.1,
          decoration: BoxDecoration(
              color: AppColors.KlightgrayColor,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Icon(
            Icons.person_add_alt,
            size: 20,
          ),
        ),
      ),
    );
  }
}




