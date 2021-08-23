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
              ],
            ),
          ),
        ),
      ),
      // backgroundColor: AppColors.KappBackgroundColor
    );
  }
}
