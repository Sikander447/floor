import 'package:floor/constants/constants.dart';
import 'package:floor/screens/home/components/home_body.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportLobbyScreen extends StatefulWidget {
  static String routeName = "/report_lobby";
  @override
  _ReportLobbyScreenState createState() => _ReportLobbyScreenState();
}

class _ReportLobbyScreenState extends State<ReportLobbyScreen> {
  String _dropDownValue;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,


        body: SingleChildScrollView(
          child: Container(
            height: height * 1,
            width: width * 1,
            color: AppColors.KlightgrayColor,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: RegularText(
                      text: "Raising Pre-Seed round for Saas",
                      size: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Center(
                    child: RegularText(
                      text: "Company",
                      size: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: RegularText(
                      text: "Why are you reporting this Lobby? ",
                      size: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),




              Container(
                height: height * 0.1,
                width: width * 1,

                child: Center(
                  child: Card(
                    child: DropdownButton(
                      elevation: 3,
                      underline: SizedBox(),
                      dropdownColor: AppColors.KwhiteColor,
                      hint: _dropDownValue == null
                          ? Center(child: Text('Unprofessional',style: TextStyle(
                        fontSize: 17,
                        color: AppColors.KblackColor,
                        fontWeight: FontWeight.w700,
                      ),))
                          : Center(
                            child: Text(
                        _dropDownValue,
                        style: TextStyle( color: AppColors.KblackColor,),
                      ),
                          ),
                      isExpanded: true,
                      iconSize: 30.0,
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColors.KblackColor,
                          fontWeight: FontWeight.w700,
                        ),
                      items: ['professional', 'Unprofessional', 'abc'].map(
                            (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(val),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        setState(
                              () {
                            _dropDownValue = val;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),


                  SizedBox(
                    height: height * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RegularText(
                      text: "Details of the incident",
                      size: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height *
                          0.2,
                      child: TextFormField(
                        controller: null,
                        cursorColor: Colors.black12,
                        expands: false,
                        maxLines: 1000,

                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(5.0)),
                            borderSide:
                            BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(5.0)),
                            borderSide:
                            BorderSide(color: Colors.grey),
                          ),
                          hintText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras auctor lorem eget finibus pretium. Ut consectetur mattis ipsum id lacinia.",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RegularText(
                      text: "Attach supporting documents",
                      size: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  SizedBox(
                    height: height * 0.008,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: height * 0.04,
                      width: width * 0.45,
                      decoration: BoxDecoration(

                        color: AppColors.KblueColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text(
                          'Attach an image',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.15,
                  ),
                  Center(
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.9,
                      child: TextButton(
                        onPressed: (){
                          // Navigator.pushNamed(context, ChannelLobbyScreen.routeName);
                        },
                        child: Text(
                          'Return to Cart',
                          style: TextStyle(
                            color: AppColors.KwhiteColor,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.KredColor,
                          ),
                          minimumSize: MaterialStateProperty.all(Size(400, 40)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
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
