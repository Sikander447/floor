import 'package:floor/constants/constants.dart';
import 'package:floor/screens/channellobby/channel_lobby.dart';
import 'package:floor/screens/startchatprivate/components/start_chat_private_body.dart';
import 'package:floor/widgets/regular_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatInfoScreen extends StatefulWidget {
  static String routeName = "/chat_info";
  @override
  _ChatInfoScreenState createState() => _ChatInfoScreenState();
}
class _ChatInfoScreenState extends State<ChatInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.KwhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.KwhiteColor,
        title: Text('Raising Per-Seed round for Saas Company',
          style: TextStyle(color: Colors.black,fontSize: 17),),
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
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            top: 5.0,
            bottom: 2.0
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularText(
                  text: 'Discription',
                  size: 18,
                  // color: AppColors.KblackColor,
                  fontWeight: FontWeight.w600,
                ),


                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: RegularText(
                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras auctor lorem eget finibus pretium. Ut consectetur mattis ipsum id lacinia. Suspendisse facilisis dictum risus, non commodo massa eleifend non.',
                    textOverFlow: TextOverflow.ellipsis,
                    maximumLine: 4,
                    size: 14,
                    // color: AppColors.KblackColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                RegularText(
                  text: 'Audience',
                  size: 18,
                  // color: AppColors.KblackColor,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.09,
                  width: width * 1,
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                       Container(
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

                       SizedBox(width: width * 0.02,),
                       Container(
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
                       SizedBox(width: width * 0.02,),
                       Container(
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
                       SizedBox(width: width * 0.02,),
                       Container(
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
                       SizedBox(width: width * 0.02,),
                       Container(
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

                       SizedBox(
                         width: width * 0.02,),
                       Row(
                         children: [
                           CircleAvatar(
                             radius: 10,
                             backgroundImage: NetworkImage(
                               'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                             ),
                           ),
                           SizedBox(
                             width: width * 0.005,),
                           CircleAvatar(
                             radius: 10,
                             backgroundImage: NetworkImage(
                               'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                             ),
                           ),
                           SizedBox(
                             width: width * 0.005,),
                           CircleAvatar(
                             radius: 10,
                             backgroundImage: NetworkImage(
                               'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                             ),
                           ),
                           SizedBox(
                             width: width * 0.005,),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             children: [
                               RegularText(
                                 text: '300+',
                                 size: 9,
                                 // color: AppColors.KblackColor,
                                 fontWeight: FontWeight.w600,
                               ),
                             ],
                           ),

                         ],
                       ),

                     ],
                   ),
                 ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RegularText(
                      text: 'view All',
                      size: 10,
                      // color: AppColors.KblackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                RegularText(
                  text: 'Niches in attendance',
                  size: 18,
                  // color: AppColors.KblackColor,
                  fontWeight: FontWeight.w600,
                ),

                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.13,
                  width: width * 1,
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 3,
                    childAspectRatio: 5 / 2,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(
                      6,
                          (index) => Row(
                        children: [
                          SizedBox(
                            height: height * 0.8,
                            width: width * 0.3,
                            child: Card(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.handyman_sharp,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.notes,
                                      size: 14,
                                    ),
                                    Text(
                                      ' investing',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                        'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                      ),
                    ),
                    SizedBox(
                      width: width * 0.005,),
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                        'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                      ),
                    ),
                    SizedBox(
                      width: width * 0.005,),
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                        'https://www.entertales.com/wp-content/uploads/forever-single-girl-1280x720.jpg',
                      ),
                    ),
                    SizedBox(
                      width: width * 0.005,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RegularText(
                            text: '300+',
                            size: 9,
                            // color: AppColors.KblackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RegularText(
                      text: 'view All',
                      size: 10,
                      // color: AppColors.KblackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                RegularText(
                  text: 'Hosts\' Profile',
                  size: 18,
                  // color: AppColors.KblackColor,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: height * 0.02,
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
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.9,
                    child: TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, ChannelLobbyScreen.routeName);
                      },
                      child: Text(
                        'Return to Cart',
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
            )
          ),
        ),
      ),
      // backgroundColor: AppColors.KappBackgroundColor
    );
  }
}
