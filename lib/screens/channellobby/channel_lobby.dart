import 'package:floor/constants/constants.dart';
import 'package:floor/screens/home/components/home_body.dart';
import 'package:floor/screens/reportlobby/report_lobby.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class ChannelLobbyScreen extends StatefulWidget {
  static String routeName = "/channel_lobby";
  @override
  _ChannelLobbyScreenState createState() => _ChannelLobbyScreenState();
}
class _ChannelLobbyScreenState extends State<ChannelLobbyScreen> {

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      print(_selectedPageIndex);
    });
  }

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
          actions: [
            Icon(
              Icons.calendar_today,
              color: AppColors.KblackColor,
              size: 22,
            ),
            Icon(
              Icons.more_vert,
              color: AppColors.KgrayColor,
              size: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_none_outlined,
                color: AppColors.KblackColor,
                size: 22,
              ),
            ),
          ],
        ),
        floatingActionButton: Container(
          height: height * 0.1,
          width: width * 0.1,
          child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, ReportLobbyScreen.routeName);
          },
  child: Icon(
      Icons.add,
      size: 28,
  ),
),
        ),
        bottomNavigationBar: BottomAppBar(
          // color: Colors.grey[300],
          elevation: 30.0,
          shape: CircularNotchedRectangle(),
          child: Container(
            decoration: BoxDecoration(
              // color: Colors.white54
            ),
            height: height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.dialpad,
                    color: _selectedPageIndex == 0
                        ? Colors.blueGrey[900]
                        : Colors.black45,
                  ),
                  onPressed: () => _selectPage(0),
                ),
                Container(
                  margin: EdgeInsets.only(right: 80),
                  child: IconButton(
                    icon: Icon(
                      Icons.mobile_friendly_rounded,
                      color: _selectedPageIndex == 1
                          ? Colors.blueGrey[900]
                          : Colors.black45,
                    ),
                    onPressed: () => _selectPage(1),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  color: _selectedPageIndex == 2
                      ? Colors.blueGrey[900]
                      : Colors.black45,
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(Icons.phone_android_sharp),
                  onPressed: null,
                ),
              ],
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
                  Row(
                    children: [
                      Image.asset('assets/images/market_logo_largeSize.jpg',
                      height: height * 0.07,
                        width: width * 0.2,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      RegularText(
                        text: "#Marketing",
                        fontWeight: FontWeight.w700,
                        size: 30,
                        // color: ,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  PopUpMenuChannelLobby(),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    height: height * 0.8,
                    width: width * 1,
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 1,
                      childAspectRatio: 4,
                      // physics: NeverScrollableScrollPhysics(),
                      children: List.generate(
                        12,
                            (index) =>  ListTile(
                              contentPadding: EdgeInsets.only(left: 8),
                              leading: CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                  'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jasmin G.Rangel',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ),
                                  ),

                                ],
                              ),
                              subtitle: Text(
                                'Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                      ),
                    ),
                  ),


                ],
              )
            ),
          ),
        ),
        // backgroundColor: AppColors.KappBackgroundColor
      ),
    );
  }
}


//popup menu

class PopUpMenuChannelLobby extends StatelessWidget {
  const PopUpMenuChannelLobby({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 1,
      // color: Colors.red,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemCount: 1,
        itemBuilder: (context, index) {
          return FocusedMenuHolder(
            menuWidth: MediaQuery.of(context).size.width * 0.50,
            blurSize: 5.0,
            menuItemExtent: 45,
            menuBoxDecoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            duration: Duration(milliseconds: 100),
            animateMenuItems: true,
            blurBackgroundColor: Colors.black54,
            bottomOffsetHeight: 100,
            openWithTap: true,
            menuItems: <FocusedMenuItem>[
              // FocusedMenuItem(
              //   title: Row(
              //     children: [
              //       Column(
              //         children: [
              //           Icon(Icons.connect_without_contact_rounded),
              //           Text("Create New Channel",style: TextStyle(
              //             fontSize: 5,
              //           ),),
              //         ],
              //       ),
              //     ],
              //   ),
              //
              //   onPressed: () async{
              //   },
              // ),
              FocusedMenuItem(
                title: Text("One-to-many"),
                trailingIcon: Icon(Icons.connect_without_contact_sharp),
                onPressed: () async{
                },
              ),
              FocusedMenuItem(
                title: Text("Private"),
                trailingIcon: Icon(Icons.lock_open),
                onPressed: () async{
                },
              ),
              FocusedMenuItem(
                title: Text("Group Message"),
                trailingIcon: Icon(Icons.person),
                onPressed: () async{
                },
              ),
              FocusedMenuItem(
                title: Text("Group Chat"),
                trailingIcon: Icon(Icons.message),
                onPressed: () async{
                },
              ),
            ],
            onPressed: () {},
            child:   ListTile(
              // contentPadding: EdgeInsets.only(left: 8),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jasmin G.Rangel',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),

                ],
              ),
              subtitle: Text(
                'Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          );
        },
      ),
    );
  }



}