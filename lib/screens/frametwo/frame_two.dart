import 'package:floor/constants/constants.dart';
import 'package:floor/screens/home/components/home_body.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrameTwoScreen extends StatefulWidget {
  static String routeName = "/frame_two";
  @override
  _FrameTwoScreenState createState() => _FrameTwoScreenState();
}
class _FrameTwoScreenState extends State<FrameTwoScreen> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.KwhiteColor,
          leading: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },

                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.KblackColor,
                    size: 18,
                  ),
                ),
              ),

            ],
          ),
          title: Center(
            child: RegularText(
              text: '#Marketing',
              fontWeight: FontWeight.w600,
              size: 20,
              color: AppColors.KblackColor,
            ),
          ),
          actions: [

            Padding(
              padding: const EdgeInsets.only(right: 7.0),
              child: Icon(
                Icons.more_vert,
                color: AppColors.KgrayColor,
                size: 22,
              ),
            ),

          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: height * 1,
            width: width * 1,
            color: AppColors.KlightgrayColor,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 0,
                right: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.09,
                    width: width * 1,
                    child: GridView.count(
                      crossAxisCount: 5,
                      // shrinkWrap: true,
                      // scrollDirection: Axis.vertical,
                      // physics: NeverScrollableScrollPhysics(),
                      children: List.generate(
                        5,
                            (index) => Container(
                          // margin: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                                ),
                              ),
                              SizedBox(
                                height: height * 0.008,
                              ),
                              Text(
                                'Student',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RegularText(
                        text: 'Add Team Members',
                        fontWeight: FontWeight.w600,
                        size: 11,
                        color: AppColors.KblackColor,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Container(
                          height: height * 0.025,
                          width: width * 0.06,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, //                   <--- border color
                              width: 1.0,
                            ),
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: Icon(Icons.add,size: 15,))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // backgroundColor: AppColors.KappBackgroundColor
      ),
    );
  }
}


