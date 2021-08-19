import 'package:floor/constants/constants.dart';
import 'package:floor/screens/intro/intro.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FrameTwoScreen extends StatefulWidget {
  static String routeName = "/frame_two";
  @override
  _FrameTwoScreenState createState() => _FrameTwoScreenState();
}
class _FrameTwoScreenState extends State<FrameTwoScreen> {
  bool click = false;
  double sliderValue = 25.0;




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


        body: Container(
          height: height * 1,
          width: width * 1,
          color: AppColors.KwhiteColor,
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
                            color: AppColors.KblackColor, //                   <--- border color
                            width: 1.0,
                          ),
                          color: AppColors.KwhiteColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(child: Icon(Icons.add,size: 15,))),
                  ],
                ),

                SizedBox(
                  height: height * 0.1,
                ),

                Center(
                  child: Image.asset('assets/icons/microphone_icon.jpg',
                  height: height * 0.25,
                    width: width * 0.5,
                  ),
                ),

                SizedBox(
                  height: height * 0.15,
                ),
                Center(
                  child: Image.asset('assets/images/sound_waves_image.png',
                    height: height * 0.09,
                    width: width * 0.7,
                  ),
                ),


                SfSlider(
                  min: 0.0,
                  max: 100.0,
                  value: sliderValue,
                  interval: 100,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value){
                    setState(() {
                      sliderValue = value;
                    });
                  },
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  MaterialButton(
                  height: height * 0.045,
                  minWidth:  width * 0.35,
                  color: AppColors.KredColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),

                  onPressed: () {},
                  child: Text('Retake' ,style: TextStyle(color: Colors.white,fontSize: 15),),
                ),

                    MaterialButton(
                      height: height * 0.045,
                      minWidth:  width * 0.35,
                      color: AppColors.KgreenColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),

                      onPressed: () {
                        Navigator.pushNamed(context, IntroScreen.routeName);
                      },
                      child: Text('Send' ,style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            ),
          ),
        ),
        // backgroundColor: AppColors.KappBackgroundColor
      ),
    );
  }
}


