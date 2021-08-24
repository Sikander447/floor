import 'package:floor/constants/constants.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetsVirtualScreen extends StatefulWidget {
  static String routeName = "/meets_virtual";
  @override
  _MeetsVirtualScreenState createState() => _MeetsVirtualScreenState();
}
class _MeetsVirtualScreenState extends State<MeetsVirtualScreen> {

  int counter = 1;

  var currentP;
  void increment() {
    // var p = User.userData.restaurantMenu.menu[widget.index].price;
    if (counter >= 15) {
    } else {
      setState(() {
        counter++;

        // User.userData.restaurantMenu.menu[widget.index].price = p + currentP;
      });
    }
  }

  void decrement() {
    // var p = User.userData.restaurantMenu.menu[widget.index].price;
    if (counter <= 1) {
    } else {
      setState(() {
        counter--;

        // User.userData.restaurantMenu.menu[widget.index].price = p - currentP;
      });
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      counter;
      // currentP = User.userData.restaurantMenu.menu[widget.index].price;
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.KappBackgroundColor,
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
          title: Center(
            child: Text(
              'Meets',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          titleSpacing: 0,
          actions: [
            Icon(
              Icons.add_circle_outline_outlined,
              color: Colors.black,
              size: 22,
            ),
            Icon(
              Icons.more_vert,
              color: AppColors.KgrayColor,
              size: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 22,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            height: height * 1,
            width: width * 1,
            child:   SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12,left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RegularText(
                            text: 'Title',
                            textOverFlow: TextOverflow.ellipsis,
                            maximumLine: 1,
                            size: 17,
                            fontWeight: FontWeight.w600,
                          ),

                          SizedBox(
                            height: height * 0.01,
                          ),
                          Container(
                            height: height * 0.06,
                            child: TextField(
                              controller: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    // color: Colors.pink[100],
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    // color: Colors.pink[100],
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                // contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                                hintText: 'What do you want to talk about ?',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  // color: Colors.pink[100],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.02,
                          ),
                          RegularText(
                            text: 'Choose Topics',
                            textOverFlow: TextOverflow.ellipsis,
                            maximumLine: 1,
                            size: 17,
                            fontWeight: FontWeight.w600,
                          ),

                          SizedBox(
                            height: height * 0.01,
                          ),

                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: width * .33,
                              height: height * .08,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius:
                                  BorderRadius.circular(width * .12),
                                  border:
                                  Border.all(color: AppColors.KappBackgroundColor, width: 0.5)),
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          decrement();
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 35,
                                        ),
                                      ),
                                      Text(
                                        "$counter",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          increment();
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 35,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }
}
