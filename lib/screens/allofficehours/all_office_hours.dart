import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AllOfficeHoursScreen extends StatefulWidget {
  static String routeName = "/all_office_hours";
  @override
  _AllOfficeHoursScreenState createState() => _AllOfficeHoursScreenState();
}
class _AllOfficeHoursScreenState extends State<AllOfficeHoursScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              children: [
                Container(
                  height: height * 0.055,
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.KgrayColor
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.KgrayColor
                        ),
                      ),
                      // filled: true,
                      // fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.KgrayColor,
                        size: 18,
                      ),
                      hintText: 'Search Messages...',
                      hintStyle: TextStyle(
                        color: AppColors.KgrayColor600,
                        fontSize: 12,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            // height: height * 0.007,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              color: AppColors.KblackColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(Icons.filter_list,color: AppColors.KwhiteColor,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RegularText(
                      text: 'All Office Hours ',
                      textOverFlow: TextOverflow.ellipsis,
                      maximumLine: 1,
                      size: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),

                SizedBox(
                  // height: height * 0.05,
                  width: width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: width*.38,
                        height: height * 0.002,
                        color: AppColors.KblackColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0,right: 7.0),
                        child: RegularText(
                          text: ' June 4 ',
                          textOverFlow: TextOverflow.ellipsis,
                          maximumLine: 1,
                          size: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: width*.38,
                        height: height * 0.002,
                        color: AppColors.KblackColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.9,
                  width: width * 1,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                      return  Card(
                        elevation: 5.0,
                        shadowColor: Colors.black54,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: height * 0.07,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ryan M. Reindardt',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'Mentor for Social media Startups',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.0008,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10,bottom: 10,right: 13),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    size: 27,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      'Wed May 18 @ 4:00 p - 30 min - 10 slots left',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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
