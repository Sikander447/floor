


//////////////


import 'package:floor/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class PublicTabBar extends StatefulWidget {
  @override
  _PublicTabBarState createState() => _PublicTabBarState();
}

class _PublicTabBarState extends State<PublicTabBar> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        ListTile(
          onTap: (){
            _showAlertDialog(context);
          },
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
              Container(
                margin: EdgeInsets.only(
                  right: 5,
                ),
                child: Icon(
                  Icons.circle,
                  color: AppColors.KgreenColor,
                  size: 16,
                ),
              )
            ],
          ),
          subtitle: Text(
            'Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),


        SizedBox(
          height: height * 0.03,
        ),
        PopUpMenu(),
      ],
    );
  }
  bool click = false;
  _showAlertDialog(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Select Recipient")),
      content: Container(
        height: height * 0.27,
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
                        color: AppColors.KblackColor
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.KblackColor
                    ),
                  ),
                  // filled: true,
                  // fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.KgrayColor,
                    size: 18,
                  ),
                  hintText: 'Search Connection',
                  hintStyle: TextStyle(
                    color: AppColors.KgrayColor600,
                    fontSize: 12,
                  ),

                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.8,
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 3,
                // childAspectRatio: 1,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(
                  4,
                      (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          click = true;
                          print('and $click}');
                        });
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                        child: click == false ? Container(

                            decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: Colors.blue.withOpacity(0.5))
                        )  : Container(),
                      ),
                    ),
                  ),


                ),

              ),
            ),
            // SizedBox(
            //   height: height * 0.005,
            // ),
            Spacer(),
            TextButton(
              onPressed: null,
              child: Text(
                'Continue',
                style: TextStyle(
                  color: AppColors.KwhiteColor,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  AppColors.KblackColor,
                ),
                minimumSize: MaterialStateProperty.all(Size(400, 40)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
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
      height: height * 0.09,
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
                title: Text("New Message"),
                trailingIcon: Icon(Icons.message_outlined),
                onPressed: () async{
                  // await WcFlutterShare.share(
                  //   // sharePopupTitle: 'https://example.com',
                  //   subject: 'This is subject',
                  //   text: 'This is text',
                  //   mimeType: 'text/plain',
                  // );
                },
              ),

            ],
            onPressed: () {},
            child:    ListTile(

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
                maxLines: 2,
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
