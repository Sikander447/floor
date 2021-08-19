import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IntroTopCard extends StatelessWidget {
  const IntroTopCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      //.22
      height: height * 0.23,
      width: width * 1,
      child: Card(
        elevation: 2.0,
        color: AppColors.KlightgrayColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 9.0,horizontal: 9.0
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [


                  Padding(

                    padding: const EdgeInsets.only(right: 15.0),
                    child:           Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          border:
                          Border.all(color: AppColors.KwhiteColor, width: 5),
                        ),
                        child: Image.asset('assets/images/girl.png',
                            height: height * 0.07,
                            width: width * 0.15,
                        )),

                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.01,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Jasmin G.Rangle',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: " (She/Her)",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 13)),
                          ],
                        ),
                      ),
                      RegularText(
                        textOverFlow: TextOverflow.ellipsis,
                        text:  'CEO / Founder @ SIlicon Valley\nDenvor, CO',
                        maximumLine: 2,
                        size: 15,
                        color: AppColors.KgrayColor,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: height * 0.04,
                              width: width * 0.25,
                              decoration: BoxDecoration(
                                color: AppColors.KgreenColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: RegularText(
                                  text: 'Founder',
                                  size: 15,

                                ),
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: width * 0.07),


                ],
              ),



              SizedBox(
                height: height * 0.01,
              ),


              Container(
                height: height * 0.05,
                width: width * 1,
                // color: Colors.black,
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 3,
                  // mainAxisSpacing: 10,
                  // crossAxisSpacing: ,
                  childAspectRatio: 3,
                  scrollDirection: Axis.vertical,
                  // physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    3,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Container(
                            height: height * 0.005,
                            width: width * 0.3,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: AppColors.KgrayColor,
                          ),
                          child: Center(child: Text('👨🏾📈BlackVC')),
                          ),
                        ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
