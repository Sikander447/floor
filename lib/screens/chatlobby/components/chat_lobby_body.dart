import 'package:floor/constants/constants.dart';
import 'package:floor/screens/chatlobby/components/chat_lobby_button.dart';
import 'package:floor/screens/chatlobby/components/mute_image_chatlobby.dart';
import 'package:floor/screens/createchannel/create_channel.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';
//
class ChatLobbyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(left: 14.0, right: 14.0, top: 12.0, bottom: 12.0),
        child: Container(
          height: height * 1,
          width: width * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: width * 0.25,
                    ),
                    Text(
                      'Lobby Title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '59:63',
                  ),
                ],
              ),
              Text(
                ' Hosts',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              border: Border.all(
                                  color: Color(0xFF04FF1D), width: 5),
                            ),
                            child: Image.asset('assets/images/girl.png')),
                        Text(
                          'James',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/girl.png',
                            ),
                            MuteImage(),
                          ],
                        ),
                        Text(
                          'James',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/girl.png'),
                            MuteImage(),
                          ],
                        ),
                        Text(
                          'James',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/girl.png'),
                            MuteImage(),
                          ],
                        ),
                        Text(
                          'James',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/girl.png'),
                            MuteImage(),
                          ],
                        ),
                        Text(
                          'James',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/girl.png'),
                            MuteImage(),
                          ],
                        ),
                        Text(
                          'James',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  ' Floor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: height * 0.07,
                      width: width * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(color: Color(0xFF04FF1D), width: 3),
                      ),
                      child: Image.asset('assets/images/man_image.png'),
                    ),
                    Text(
                      'Alice',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: _floorRow(context),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: _floorRow(context),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: _floorRow(context),
              ),
              PopUpMenu(),
              SizedBox(
                height: height * 0.01,
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: height * 0.1,
                  width: width * 0.1,
                  child: FloatingActionButton(
                    onPressed: () {

                      _flottingBtnBottomSheet(context);
                    },
                    child: Icon(
                      Icons.add,
                      size: 28,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChatLobbyButton(
                    text: 'Leave',
                    btnClr: 0xFFFF0303,
                    onClick: (){},
                  ),
                  ChatLobbyButton(
                    text: 'Lobby info',
                    btnClr: 0xFF000000,
                    onClick: (){
                      Navigator.pushNamed(
                          context, CreateChannelScreen.routeName);
                    }
                  ),
                  ChatLobbyButton(
                    text: 'Raise Hand',
                    btnClr: 0xFF2CC09C,
                    onClick: (){
                      _menuAlertDialog(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _menuAlertDialog(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: SizedBox(
        width: width * 1,
        height: height * 0.05,
        child: Card(
            color: AppColors.KlightgrayColor,
            child: Center(child:RegularText(
              text: 'Raised Hands',
              size: 20,
              fontWeight: FontWeight.bold,
            ))),
      )),
      content: Container(
        height: height * 0.3,
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                Positioned(
                  top: 5,
                  left: 8,
                  child: RegularText(
                    text: '1',
                    color: AppColors.KblackColor,
                  )),

                Container(
                  width: width * 0.95,
                  padding: EdgeInsets.only(left: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                    ),
                    title: Text(
                      'Jasmin G. Rangle',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      '2x Founder, B2B Advisor',
                      style: TextStyle(
                        color: Colors.pink[200],
                        fontSize: 9,
                      ),
                    ),
                    trailing: Container(
                        height: height * 0.045,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: AppColors.KlightGreenColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: RegularText(
                            text: 'Invite',size: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              fit: StackFit.loose,
              children: [
                Positioned(
                    top: 5,
                    left: 8,
                    child: RegularText(
                      text: '2',
                      color: AppColors.KblackColor,
                    )),

                Container(
                  width: width * 0.95,
                  padding: EdgeInsets.only(left: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                    ),
                    title: Text(
                      'Jasmin G. Rangle',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      '2x Founder, B2B Advisor',
                      style: TextStyle(
                        color: Colors.pink[200],
                        fontSize: 9,
                      ),
                    ),
                    trailing: Container(
                        height: height * 0.045,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: AppColors.KlightGreenColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: RegularText(
                            text: 'Invite',size: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              fit: StackFit.loose,
              children: [
                Positioned(
                    top: 5,
                    left: 8,
                    child: RegularText(
                      text: '3',
                      color: AppColors.KblackColor,
                    )),

                Container(
                  width: width * 0.95,
                  padding: EdgeInsets.only(left: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                    ),
                    title: Text(
                      'Jasmin G. Rangle',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      '2x Founder, B2B Advisor',
                      style: TextStyle(
                        color: Colors.pink[200],
                        fontSize: 9,
                      ),
                    ),
                    trailing: Container(
                        height: height * 0.045,
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: AppColors.KlightGreenColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: RegularText(
                            text: 'Invite',size: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                    ),
                  ),
                ),
              ],
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

  //
  Widget _floorRow(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: height * 0.055,
              width: width * 0.11,
              child: Image.asset('assets/images/man_image.png'),
            ),
            Text(
              'James',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: height * 0.055,
              width: width * 0.11,
              child: Image.asset('assets/images/man_image.png'),
            ),
            Text(
              'James',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }

  //TODO: FlottingAction Btn ButtomSheet
  void _flottingBtnBottomSheet(context){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return SafeArea(
            child: Container(
              height: height * 0.4,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: height * 0.055,
                    width: width * 0.9,
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

                  Container(
                    width: width * 0.95,
                    padding: EdgeInsets.only(left: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                      ),
                      title: Text(
                        'Jasmin G. Rangle',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        '2x Founder, B2B Advisor',
                        style: TextStyle(
                          color: Colors.pink[200],
                          fontSize: 9,
                        ),
                      ),
                      trailing: Container(
                        height: height * 0.045,
                        width: width * 0.1,
                        decoration: BoxDecoration(
                            color: AppColors.KlightgrayColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(
                          Icons.person_add_alt,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.95,
                    padding: EdgeInsets.only(left: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                      ),
                      title: Text(
                        'Jasmin G. Rangle',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        '2x Founder, B2B Advisor',
                        style: TextStyle(
                          color: Colors.pink[200],
                          fontSize: 9,
                        ),
                      ),
                      trailing: Container(
                        height: height * 0.045,
                        width: width * 0.1,
                        decoration: BoxDecoration(
                            color: AppColors.KlightgrayColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(
                          Icons.person_add_alt,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.95,
                    padding: EdgeInsets.only(left: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg'),
                      ),
                      title: Text(
                        'Jasmin G. Rangle',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        '2x Founder, B2B Advisor',
                        style: TextStyle(
                          color: Colors.pink[200],
                          fontSize: 9,
                        ),
                      ),
                      trailing: Container(
                        height: height * 0.045,
                        width: width * 0.1,
                        decoration: BoxDecoration(
                            color: AppColors.KlightgrayColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(
                          Icons.person_add_alt,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Expanded(
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
                title: Text("Share"),
                trailingIcon: Icon(Icons.share),
                onPressed: () async{
                 await WcFlutterShare.share(
                      // sharePopupTitle: 'https://example.com',
                      subject: 'This is subject',
                      text: 'This is text',
                      mimeType: 'text/plain',
                 );
                },
            ),
            FocusedMenuItem(
                title: Text("Invite Friends "),
                trailingIcon: Icon(Icons.person_add_alt),
                onPressed: (){
                  _inviteBottomSheet(context);
                },
            ),
          ],
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: height * 0.05,
                    width: width * 0.1,
                    child: Image.asset('assets/images/man_image.png'),
                  ),
                  Text(
                    'James',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
  void _inviteBottomSheet(context){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            height: height * 0.17,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Block User',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.KbottomSheetBtnOneColor,
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
                Center(
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Report User',
                      style: TextStyle(
                        color: Colors.black,
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
              ],
            ),
          );
        }
    );
  }


}
