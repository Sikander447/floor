import 'package:floor/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';


class ChannelTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Channels',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: height * 0.012,
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          '# Marketing',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.person_add_alt_1_outlined,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Expanded(
                              child: Text(
                                'Lorem ipsum dolor Lorem ipsum dolor Lorem\nipsum Lorem ipsum dolor Lorem ipsum \ndolor Lorem ipsum dolor Lorem ipsum dolor',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          children: [
                            Container(
                              // height: height * 0.02,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: NetworkImage(
                                  'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              '306+',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.003,
                ),
                PopUpMenu(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



//popup menu

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.16,
      width: width * 0.06,
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
              FocusedMenuItem(
                title: Text("Create New Channel"),
                trailingIcon: Icon(Icons.arrow_forward),
                onPressed: () async{
                },
              ),
              FocusedMenuItem(
                title: Text("Invite Members"),
                trailingIcon: Icon(Icons.person),
                onPressed: () async{
                },
              ),
            ],
            onPressed: () {},
            child:    Card(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      '# Marketing',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.person_add_alt_1_outlined,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Expanded(
                          child: Text(
                            'Lorem ipsum dolor Lorem ipsum dolor Lorem\nipsum Lorem ipsum dolor Lorem ipsum \ndolor Lorem ipsum dolor Lorem ipsum dolor',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.end,
                      children: [
                        Container(
                          // height: height * 0.02,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                              'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Text(
                          '306+',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }



}