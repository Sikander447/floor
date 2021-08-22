import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MeetsMenuTopCard extends StatelessWidget {
  // final Color checkMarkIcon;
  // IntroCheckMarkCard({this.checkMarkIcon});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return   SizedBox(
      height: height * 0.19,
      width: width * 1,
      child: Card(
        elevation: 0.5,
        color: AppColors.KlightgrayColor,
        child: Column(
          children: [
            ListTile(
              leading:  Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: AppColors.KredColor, width: 5),
                  ),
                  child: Image.asset('assets/images/man_image.png',
                    height: height * 0.05,
                    width: width * 0.13,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RegularText(
                    text: 'Jasmin G.Rangle',
                    color: Colors.black,
                    size: 16,
                    fontWeight: FontWeight.w600
                  ),


                ],
              ),
              subtitle: RegularText(
                textOverFlow: TextOverflow.ellipsis,
                text:  '2x Founder, B2B Advisor',
                maximumLine: 1,
                size: 13,
                color: AppColors.KgrayColor,
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 17),
                child: Wrap(
                  children: [
                    Icon(Icons.person_outline),

                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: RegularText(
                        textOverFlow: TextOverflow.ellipsis,
                        text:  '3K People',
                        maximumLine: 1,
                        size: 13,
                        color: AppColors.KblackColor,
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.07,
              width: width * 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Column(
                      children: [
                        Icon(Icons.person_outline),
                        RegularText(
                          text: 'in Person',
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: height * 0.07,
                    width: width * 1,
                    // color: Colors.black,
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 3,
                      // mainAxisSpacing: 10,
                      // crossAxisSpacing: ,
                      childAspectRatio: 3,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
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
          ],
        ),
      ),
    );
  }
}
